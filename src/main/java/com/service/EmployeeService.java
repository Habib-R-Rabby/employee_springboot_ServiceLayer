package com.service;

import java.util.List;
import java.util.Optional;

import com.entity.EmployeeEntity;

public interface EmployeeService {

	void saveEmployee(EmployeeEntity employeeEntity);

	Optional<EmployeeEntity> findByEmail(String email);

	List<EmployeeEntity> findAll();

	Optional<EmployeeEntity> findById(Long id);

	void save(EmployeeEntity employee);

	void deleteById(Long id);

}
