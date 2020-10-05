package com.displaydate.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class secretDoor {
	public static ArrayList<String> guess;

	public secretDoor() {
		guess = new ArrayList<String>();
	}

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("guess", guess);
		return "index.jsp";
	}

	@RequestMapping("/door/access")
	public String inside(@RequestParam(value = "code") String name) {
		String red = "redirect:/";
		if (name.equals("bushido")) {
			red = "redirect:/door/inside";
		} else {
			guess.add(name);
		}
		return red;
	}

	@RequestMapping("/door/inside")
	public String inside(Model model) {
		return "inside.jsp";
	}

	@RequestMapping("/home")
	public String home(Model model) {
		guess = new ArrayList<String>();
		return "redirect:/";
	}
//	@GetMapping("/reset")
//	public String reset(HttpSession session) {
//		session.removeAttribute("pageViews");
//		return "redirect:/";

}
