package com.sankalp.service;

import java.util.List;

import com.sankalp.model.Student;

public interface StudentService {
	public void saveStudentObj(Student studentObj);
	public List<Student> getAllStudents();
	public Student getStudentObj(int theId);
	public void removeStudentObj(int theId);
	public void updateStudentObj(Student studentObj);
	
}
