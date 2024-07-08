package com.example.lms.controller;


import com.example.lms.Repositories.CourseRepository;
import com.example.lms.model.Courses;
import com.example.lms.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.lms.Repositories.UserRepository;

import java.util.List;

@Controller
public class UserController {


    @Autowired
    private UserRepository userrepo;

    @Autowired
    private CourseRepository courseRepo;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")  //this will link the login.jsp to /login
    public String Login() {
        return "login";
    }

    @RequestMapping(path = "/login_submit", method = RequestMethod.POST)   //works when form is submitted
    public String LoginSubmit(@RequestParam("email") String email,@RequestParam("password") String password, Model model) {

        List<User> users = userrepo.findByEmailAndPassword(email, password);//gtting email and password from user table
        for (User user : users) { //here users is the list created above
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                if ("admin".equals(user.getRole())) {
                    List <Courses> allCourses = (List<Courses>) courseRepo.findAll();
                    model.addAttribute("courses",allCourses);
                    return "redirect:/admin";
                } else if ("customer".equals(user.getRole())) {
                    List <Courses> allCourses = (List<Courses>) courseRepo.findAll();
                    model.addAttribute("courses",allCourses);
                    System.out.println("in customer");

                    return "redirect:/customer";
                } else {
                    return "badRequest";
                }
            }

        }

        model.addAttribute("error", "Invalid email or password");
        return "redirect:/";
    }


    @RequestMapping("/signup")
    public String Signup(Model model) {
        model.addAttribute("usertable", new User()); //this creates a blank entry in db
        return "signup";
    }


    @PostMapping("/signup_submit")
    public String Signupsubmit(@ModelAttribute("usertable") User user, Model model) {
//        System.out.println(user);
        userrepo.save(user); //saves the user object to the database.

        return "redirect:/";
    }


    @RequestMapping("/admin")
    public String admin(Model model) {
        List <Courses> allCourses = (List<Courses>) courseRepo.findAll();
        model.addAttribute("courses",allCourses);
        return "admin";
    }

    @RequestMapping("/customer")
    public String customer() {
        return "customer";
    }


    }

