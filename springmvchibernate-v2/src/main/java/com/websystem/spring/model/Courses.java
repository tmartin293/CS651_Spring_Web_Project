package com.websystem.spring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "courses")
@Embeddable
public class Courses implements Serializable {

	@Id
	@Column(name = "student_id")
	private String student_id;

	@Column(name = "course_id")
	private String course_id;

	public Courses(String studentId, String courseId) {
		this.student_id = studentId;
		this.course_id = courseId;
	}

	public void setStudentID(String student_id) {
		this.student_id = student_id;
	}

	public void setCourseID(String course_id) {
		this.course_id = course_id;
	}

	public String getCourse_id() {
		return course_id;
	}

	public String getStudent_id() {
		return student_id;
	}

	@Override
	public boolean equals(Object that) {
		if (this == that)
			return true;
		if (that == null || getClass() != that.getClass())
			return false;

		return this.student_id.equals(((Courses) that).student_id) && this.course_id.equals(((Courses) that).course_id);
	}

	@Override
	public int hashCode() {
		return 31 * this.student_id.hashCode() + this.course_id.hashCode();
	}

	@Override
	public String toString() {
		return "student_id=" + student_id + ", course_id=" + course_id;
	}
}
