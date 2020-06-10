package com.sankalp.dao;

import java.util.List;

import com.sankalp.model.Student;

public interface StudentDao {

	void saveStudentObj(Student studentObj);

	List<Student> getAllStudents();

	Student getStudentObj( int theId);

	void removeStudentObj(int theId);

	void updateStudentObj(Student studentObj);

}
