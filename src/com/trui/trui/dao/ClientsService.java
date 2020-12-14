package com.trui.trui.dao;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.trui.trui.model.Client;

@Service
public class ClientsService<client> {

	@Autowired
	private ClientsRepository clientRepo;

	@SuppressWarnings("unchecked")
	public List<client> listAll() {
		return (List<client>) clientRepo.findAll();
	}

	public void save(Client client) {
		clientRepo.save(client);
	}

	public Object get(Integer id) {
		Optional<Client> result = clientRepo.findById(id);
		return result.get();
	}

	public void delete(Integer id) {
		clientRepo.deleteById(id);
	}

}