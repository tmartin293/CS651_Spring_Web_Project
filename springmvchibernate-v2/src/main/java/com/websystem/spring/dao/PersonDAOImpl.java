package com.websystem.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.websystem.spring.model.Courses;
import com.websystem.spring.model.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {

	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addPerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);
		logger.info("Person saved successfully, Person Details=" + p);
	}

	@Override
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Person updated successfully, Person Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Person> listPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Person> personsList = session.createQuery("from Person").list();
		for (Person p : personsList) {
			logger.info("Person List::" + p);
		}
		return personsList;
	}

	@Override
	public Person getPersonById(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			Person p = (Person) session.load(Person.class, new String(id));
			logger.info("Person loaded successfully, Person details=" + p);
			return p;
		} catch (Exception e) {
			System.out.println("------ returning an empty object ---------");
			return new Person();
		}
	}

	@Override
	public void removePerson(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new String(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Courses> getCourses(String studentId) {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = String.format("select * from courses where student_id='%s';", studentId);
		List<Object[]> rows = session.createSQLQuery(queryString).list();
		List<Courses> courses = new ArrayList<>();
		for (Object[] row : rows) {
			courses.add(new Courses(row[0].toString(), row[1].toString()));
		}
		return courses;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void addCourse(String studentId, String courseId) {
		Session session = this.sessionFactory.getCurrentSession();
		Courses course = new Courses(studentId, courseId);
		try {
			session.save("Courses", course);
		} catch (Exception e) {
			// Do nothing
		}
	}

	@Override
	public void removeCourse(String studentId, String courseId) {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = String.format("delete from courses where course_id='%s';", courseId);
		SQLQuery q = session.createSQLQuery(queryString);
		q.executeUpdate();

		/*
		 * Courses course = new Courses(studentId, courseId); if (course != null) {
		 * session.delete("Courses", course); }
		 */
	}

}
