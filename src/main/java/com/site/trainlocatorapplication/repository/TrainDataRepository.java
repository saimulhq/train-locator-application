package com.site.trainlocatorapplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.site.trainlocatorapplication.model.TrainData;

public interface TrainDataRepository extends JpaRepository<TrainData, Long>{

}
