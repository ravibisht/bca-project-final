package com.GYS.app.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



/**
 * @author Ravindra Singh
 *
 */

@Component
@Entity
@Table(name="project_categories")
public class ProjectCategory {

@Id	
@GeneratedValue
public int id;	

public String name;
private String description;
private String image;

@Column(name="created_date")
private Date createdDate;

@Column(name="updated_date")
private Date updatedDate;



@OneToMany(cascade = CascadeType.ALL, mappedBy = "projectCategory", fetch = FetchType.LAZY)
private List<Project> projects = new ArrayList<Project>();


//---------------------------To String ----------------------------- 


@Override
public String toString() {
	return "Project_Category [id=" + id + ", name=" + name + ", description=" + description + ", image=" + image
			+ ", createdDate=" + createdDate + ", updatedDate=" + updatedDate + "]";
}






//--------------------   Getters And Setters ---------------------------------------


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
}

public Date getCreatedDate() {
	return createdDate;
}

public void setCreatedDate(Date createdDate) {
	this.createdDate = createdDate;
}

public Date getUpdatedDate() {
	return updatedDate;
}

public void setUpdatedDate(Date updatedDate) {
	this.updatedDate = updatedDate;
}



public List<Project> getProjects() {
	return projects;
}

public void setProjects(List<Project> projects) {
	this.projects = projects;
}





	
}
