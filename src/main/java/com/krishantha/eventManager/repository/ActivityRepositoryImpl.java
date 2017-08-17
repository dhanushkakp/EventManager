package com.krishantha.eventManager.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.krishantha.eventManager.model.Activity;
import com.krishantha.eventManager.model.Event;

@Repository("activityRepository")
public class ActivityRepositoryImpl implements ActivityRepository {

	@PersistenceContext
	EntityManager entityManager;

	public Activity save(Activity activity) {
		entityManager.persist(activity);
		entityManager.flush();
		return activity;
	}


}
