package com.example.lms.Repositories;

import com.example.lms.model.Courses;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CourseRepository extends CrudRepository<Courses,Integer> {
    public List<Courses> findByCourseName(String courseName);
    public List<Courses> findByCategory(String category);
}
