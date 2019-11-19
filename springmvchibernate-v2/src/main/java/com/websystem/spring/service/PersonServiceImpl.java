package com.websystem.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystem.spring.dao.PersonDAO;
import com.websystem.spring.model.Courses;
import com.websystem.spring.model.Person;

@Service
public class PersonServiceImpl implements PersonService {

	private PersonDAO personDAO;

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}

	@Override
	@Transactional
	public void addPerson(Person p) {
		this.personDAO.addPerson(p);
	}

	@Override
	@Transactional
	public void updatePerson(Person p) {
		this.personDAO.updatePerson(p);
	}

	@Override
	@Transactional
	public List<Person> listPersons() {
		return this.personDAO.listPersons();
	}

	@Override
	@Transactional
	public Person getPersonById(String getStudent_id) {
		return this.personDAO.getPersonById(getStudent_id);
	}

	@Override
	@Transactional
	public boolean validate(String student_id) {
		Person person = this.personDAO.getPersonById(student_id);
		return person.getStudent_id() != null;
	}

	@Override
	@Transactional
	public void removePerson(String getStudent_id) {
		this.personDAO.removePerson(getStudent_id);
	}

	@Override
	@Transactional
	public void addCourse(String student_id, String course_id) {
		this.personDAO.addCourse(student_id, course_id);
	}

	@Override
	@Transactional
	public void removeCourse(String student_id, String course_id) {
		this.personDAO.removeCourse(student_id, course_id);
	}

	@Override
	@Transactional
	public List<Courses> getCourses(String student_id) {
		return this.personDAO.getCourses(student_id);
	}
}
