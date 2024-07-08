package com.example.lms.controller;

import com.example.lms.Repositories.CourseRepository;
import com.example.lms.model.Courses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseRepository courseRepo;   //done to connect repo with controller


    @RequestMapping("/addcourse")
    public String Addcourse(Model model){
        model.addAttribute("courses", new Courses());
        return "addcourse";
    }

    @PostMapping("/course_added")
    public String Course_added(@ModelAttribute("courses") Courses course, Model model){
        System.out.println(course);
        courseRepo.save(course);

        return "redirect:/admin";
    }


    @PostMapping("/deletecourse/{id}")
    public String deleteCourse(@PathVariable int id) {
        courseRepo.deleteById(id);
        return "redirect:/admin";  // Redirect back to the admin page after deletion
    }


    //     Display form to update course
    @GetMapping("/UpdateCourse/{id}")
    public String showUpdateForm(@PathVariable int id, Model model) {
        Courses course = courseRepo.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid course id: " + id));
        System.out.println(course);
        model.addAttribute("course", course);
        return "UpdateCourse"; // Assuming you will create an updatecourse.jsp for the form
    }

    // Handle form submission for updating course
    @PostMapping("/UpdateCourse/{id}")
    public String updateCourse(@ModelAttribute("course") Courses updatedCourse) {
        courseRepo.save(updatedCourse); // Save updated course details
        return "redirect:/admin"; // Redirect back to admin page after update
    }

    @GetMapping("/customer")
    public String showCustomerPage(Model model) {
        // Define categories manually
        List<String> categories = Arrays.asList("Programming", "Design", "Mathematics", "Science", "Languages");

        // Add categories and all courses to the model
        model.addAttribute("categories", categories);
        model.addAttribute("courses", courseRepo.findAll());

        // Return the name of the view (customer.jsp)
        return "customer";
    }
    @GetMapping("/filterCourses")
    public String filterCoursesByCategory(@RequestParam(name = "category") String category, Model model) {
        List<Courses> filteredCourses;

        if (category == null || category.isEmpty()) {
            // If no category is selected, show all courses
            filteredCourses = (List<Courses>) courseRepo.findAll();
        } else {
            // Filter courses by the selected category
            filteredCourses = courseRepo.findByCategory(category);
        }

        // Define categories manually
        List<String> categories = Arrays.asList("Programming", "Design", "Mathematics", "Science", "Languages");

        // Add categories, filtered courses, and all courses to the model        //adding data to model
        model.addAttribute("categories", categories); //"categories": The list of predefined categories.
        model.addAttribute("filteredCourses", filteredCourses);//"filteredCourses": Courses that match the selected category, which will be displayed in customer.jsp.

        // Return the view where the filtered courses will be displayed (customer.jsp)
        return "customer";
    }


}
