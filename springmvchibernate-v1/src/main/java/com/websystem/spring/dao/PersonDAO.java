package com.websystem.spring.dao;

import java.util.List;

import com.websystem.spring.model.Person;

public interface PersonDAO {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(String id);
	public void removePerson(String id);
}
