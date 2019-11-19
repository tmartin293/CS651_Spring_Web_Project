package com.websystem.spring.service;

import java.util.List;

import com.websystem.spring.model.Courses;
import com.websystem.spring.model.Person;

public interface PersonService {

	public void addPerson(Person p);

	public void updatePerson(Person p);

	public List<Person> listPersons();

	public Person getPersonById(String getStudent_id);

	public void removePerson(String getStudent_id);

	public boolean validate(String student_id);

	public void addCourse(String student_id, String course_id);

	public void removeCourse(String student_id, String course_id);

	public List<Courses> getCourses(String student_id);

}