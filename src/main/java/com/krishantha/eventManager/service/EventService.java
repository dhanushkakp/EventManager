package com.krishantha.eventManager.service;

import java.util.List;

import com.krishantha.eventManager.model.Event;
import com.krishantha.eventManager.model.EventType;

public interface EventService {

	List<EventType> getAllEventTypes();

	Event save(Event event);

	List<Event> fetchAllEvents();

}
