package com.example.lms.Repositories;

import com.example.lms.model.Courses;
import com.example.lms.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Integer> {
    public List<User> findByname(String name);
    public List<User> findByEmailAndPassword(String email ,String password);

}