package com.main.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.main.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
