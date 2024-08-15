package com.controllers;

import com.dao.EmployeeRepository;
import com.entity.EmployeeEntity;
import com.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;
    
	@Autowired
	EmployeeService employeeService;
    
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("employee", new EmployeeEntity());
        return "signup";
    }

    @PostMapping("/signup")
    public String signupEmployee(@ModelAttribute EmployeeEntity employee, Model model) {
        Optional<EmployeeEntity> existingEmployee = employeeRepository.findByEmail(employee.getEmail());

        if (existingEmployee.isPresent()) {
            model.addAttribute("error", "Email is already in use.");
            return "signup";
        }
        
		employeeService.saveEmployee(employee);
        //employeeRepository.save(employee);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String loginEmployee(@RequestParam String email, @RequestParam String password, HttpSession session, Model model) {
        Optional<EmployeeEntity> optionalEmployee = employeeRepository.findByEmail(email);
        if (optionalEmployee.isPresent()) {
            EmployeeEntity employee = optionalEmployee.get();
            if (employee.getPassword().equals(password)) {
                session.setAttribute("employee", employee);
                return "redirect:/profile";
            } else {
                model.addAttribute("error", "Invalid password");
                return "login";
            }
        } else {
            model.addAttribute("error", "User not found");
            return "login";
        }
    }

    @GetMapping("/profile")
    public String viewProfile(HttpSession session, Model model) {
        EmployeeEntity employee = (EmployeeEntity) session.getAttribute("employee");
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "profile";
        } else {
            return "redirect:/login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }

    @GetMapping("/showAll")
    public String showAllEmployees(Model model) {
        List<EmployeeEntity> employees = employeeRepository.findAll();
        model.addAttribute("employees", employees);
        return "showAll";
    }

    @GetMapping("/editEmployee")
    public String editEmployee(@RequestParam Long id, Model model) {
        EmployeeEntity employee = employeeRepository.findById(id).orElse(null);
        model.addAttribute("employee", employee);
        return "editEmployee";
    }

    @PostMapping("/saveEmployee")
    public String saveEmployee(EmployeeEntity employee) {
    	employeeService.save(employee);
        return "redirect:/showAll";
    }
    
    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam Long id) {
    	employeeService.deleteById(id);
        return "redirect:/showAll";
    }
}
