package com.websystem.spring.service;

import java.util.List;

import com.websystem.spring.model.Person;

public interface PersonService {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(String getStudent_id);
	public void removePerson(String getStudent_id);
	
}
