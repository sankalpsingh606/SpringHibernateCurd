package com.sankalp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sankalp.model.Student;


@Transactional
@Repository
public class StudentDaoImpl implements StudentDao  {

	@Autowired
	SessionFactory sessionFactory;

	//@Transactional
	public void saveStudentObj(Student studentObj) {
		sessionFactory.getCurrentSession().saveOrUpdate(studentObj);
	}
	//@Transactional
	public List<Student> getAllStudents() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Student> theQuery = currentSession.createCriteria(Student.class).list();
		return theQuery;
	}
	
	
	
	//@Transactional
	public Student getStudentObj(int theId) {
		Student studentObj = (Student) sessionFactory.getCurrentSession().get(Student.class, theId);
		return studentObj;
	}
	//@Transactional
	public void removeStudentObj(int theId) {
		Student studentObj = (Student) sessionFactory.getCurrentSession().get(Student.class, theId);
		sessionFactory.getCurrentSession().delete(studentObj);
	}

	//@Transactional
	public void updateStudentObj(Student studentObj) {
		sessionFactory.getCurrentSession().update(studentObj);
	}

}