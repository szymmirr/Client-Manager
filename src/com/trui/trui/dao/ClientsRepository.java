package com.trui.trui.dao;

import org.springframework.data.repository.CrudRepository;
import com.trui.trui.model.Client;

public interface ClientsRepository extends CrudRepository<Client, Integer> {

}