package com.sankalp.cont;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.sankalp.model.Student;
import com.sankalp.service.StudentService;




@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping("/showFormForAdd")
	public String showAddForm(Model model) {
		model.addAttribute("student", new Student());
		return "student-form";
	}

	@PostMapping("/saveProcess")
	public String saveStudentObj( Student studentObj) {
		studentService.saveStudentObj(studentObj);
		return "redirect:/list";
	}

	@RequestMapping("/list")
	public String listOfStudents(Model model) {
		model.addAttribute("studentsList", studentService.getAllStudents());
		return "student-form";
	}

	@RequestMapping("/displayUpdateForm")
	public String showUpdateForm(@RequestParam("studentId") int theId, Model model) {
		model.addAttribute("student", studentService.getStudentObj(theId));
		return "student-form";
	}
	@RequestMapping("/updateForm")
	public String UpdateForm(Student studentObj) {
		studentService.updateStudentObj(studentObj);
		return "redirect:/list";
	}


	@RequestMapping("/displayDeleteForm")
	public String deleteStudentObj(@RequestParam("studentId") int theId, Model model) {
		studentService.removeStudentObj(theId);
		return "redirect:/list";
	}
}