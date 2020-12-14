package com.trui.trui.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.trui.trui.dao.ClientsService;
import com.trui.trui.model.Clients;

@Controller
public class ClientsController {

	@Autowired
	private ClientsService<Clients> service;

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView modelView = new ModelAndView("index");
		List<Clients> listClients = service.listAll();
		modelView.addObject("listClients", listClients);
		return modelView;
	}

	@RequestMapping("/new")
	public String createClient(Map<String, Object> model) {
		model.put("clients", new Clients());
		return "create_client";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveClient(@ModelAttribute("clients") Clients clients) {
		service.save(clients);
		return "redirect:/";
	}

	@RequestMapping("/edit")
	public ModelAndView editClientForm(@RequestParam Integer id) {
		ModelAndView modelView = new ModelAndView("edit_client");
		Clients clients = (Clients) service.get(id);
		modelView.addObject("clients", clients);
		return modelView;
	}

	@RequestMapping("/delete")
	public String deleteClients(@RequestParam Integer id) {
		service.delete(id);
		return "redirect:/";
	}
}
