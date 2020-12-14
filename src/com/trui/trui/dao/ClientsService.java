package com.trui.trui.dao;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.trui.trui.model.Clients;

@Service
public class ClientsService<clients> {

	@Autowired
	private ClientsRepository clientsRepo;

	public List<clients> listAll() {
		return (List<clients>) clientsRepo.findAll();
	}

	public void save(Clients clients) {
		clientsRepo.save(clients);
	}

	public Object get(Integer id) {
		Optional<Clients> result = clientsRepo.findById(id);
		return result.get();
	}

	public void delete(Integer id) {
		clientsRepo.deleteById(id);
	}

}