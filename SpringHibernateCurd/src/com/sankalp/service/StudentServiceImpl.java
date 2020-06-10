package com.sankalp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sankalp.dao.StudentDao;
import com.sankalp.model.Student;
@Transactional
@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	StudentDao studentDao;

	@Override
	public void saveStudentObj(Student studentObj) {
		studentDao.saveStudentObj(studentObj);
	}

	@Override
	public List<Student> getAllStudents() {
		return studentDao.getAllStudents();
	}

	@Override
	public Student getStudentObj(int theId) {
		// TODO Auto-generated method stub
		return  studentDao.getStudentObj(theId);
	}

	@Override
	public void removeStudentObj(int theId) {
		studentDao.removeStudentObj(theId);
	}

	@Override
	public void updateStudentObj(Student studentObj) {
	studentDao.updateStudentObj(studentObj);
	}

}
