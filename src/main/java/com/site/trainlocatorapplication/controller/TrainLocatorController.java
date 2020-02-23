package com.site.trainlocatorapplication.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.site.trainlocatorapplication.model.TrainData;
import com.site.trainlocatorapplication.repository.TrainDataRepository;

@RestController
public class TrainLocatorController {
	@Autowired
	private TrainDataRepository trainDataRepository;
	
    @RequestMapping(value="/trains", method=RequestMethod.GET)
    public List<TrainData> getTrainData() {
        return trainDataRepository.findAll();
    }
    
    @RequestMapping(value="/trains/{id}/location", method=RequestMethod.PUT)
    public TrainData updateTrainData(@PathVariable Long id, @Valid @RequestBody TrainData trainData) {
    	trainData.setId(id);
    	trainDataRepository.save(trainData);
		return trainData;
    }
}
