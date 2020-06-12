package com.GYS.app.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.GYS.app.model.Project;

public interface ProjectRepository extends JpaRepository<Project, Integer>{
	@Modifying
	@Transactional
	@Query("delete from Project p where p.id =?1")
	public void deleteById(int id);
	
	public List<Project>findTop4ByOrderByIdDesc(); 
	
}
