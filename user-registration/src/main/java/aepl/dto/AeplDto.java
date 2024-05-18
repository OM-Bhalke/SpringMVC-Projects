package aepl.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AeplDto {

private String name;
private String email;
@Id
private long phoneNumber;
private String dob;
private String location;
private String document;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public long getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(long phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getDocument() {
	return document;
}
public void setDocument(String document) {
	this.document = document;
}
@Override
public String toString() {
	return "AeplDto [name=" + name + ", email=" + email + ", phoneNumber=" + phoneNumber + ", dob=" + dob
			+ ", location=" + location + ", document=" + document + "]";
}
	
}
