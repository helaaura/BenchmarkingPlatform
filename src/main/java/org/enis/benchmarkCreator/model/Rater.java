package org.enis.benchmarkCreator.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Entity;
import org.hibernate.annotations.Table;

@SuppressWarnings("deprecation")
@Entity
@Table(appliesTo="Rater")
public class Rater {
@Column
private String  firstName;
@Column
private String lastName;
@Column
private String login;
@Column
private String password;
@Column
private String email;

@Id
@Column(name="id")
@GeneratedValue(strategy=GenerationType.AUTO)
private int idRater;



public int getIdRater() {
	return idRater;
}
public void setIdRater(int idRater) {
	this.idRater = idRater;
}

public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLogin() {
	return login;
}
public void setLogin(String login) {
	this.login = login;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getLastName() {
	return lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
@Override
public String toString() {
	return "Rater [firstName=" + firstName + ", lastName=" + lastName
			+ ", login=" + login + ", password=" + password + ", email="
			+ email + ", idRater=" + idRater + "]";
}


}
