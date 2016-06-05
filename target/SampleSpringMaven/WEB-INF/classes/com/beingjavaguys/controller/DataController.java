package com.beingjavaguys.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beingjavaguys.domain.Student;

@Controller
public class DataController {

 @RequestMapping("student")
 public @ResponseBody
 Student getStudent() {
  return new Student(23, "meghna");
 }

 @RequestMapping("studentlist")
 public @ResponseBody
 List<Student> getStudentList() {
  List<Student> studentList = new ArrayList<Student>();
  studentList.add(new Student(23, "Meghna"));
  studentList.add(new Student(3, "Robert"));
  studentList.add(new Student(93, "Andrew"));
  studentList.add(new Student(239, "Eddy"));

  return studentList;
 }

}