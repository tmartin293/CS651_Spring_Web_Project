package com.websystem.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 *
 */
@Entity
@Table(name = "student")
public class Person {

	/*
	 * @Id
	 * 
	 * @Column(name="student_id")
	 * 
	 * @GeneratedValue(strategy=GenerationType.IDENTITY)
	 */
	@Id
	@Column(name = "student_id")
	private String student_id;

	private String student_name;

	private String student_email;

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_email() {
		return student_email;
	}

	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}

	@Override
	public String toString() {
		return "id=" + student_id + ", name=" + student_name + ", student_email=" + student_email;// + ", course_id="
		// + course_id;
	}
}
