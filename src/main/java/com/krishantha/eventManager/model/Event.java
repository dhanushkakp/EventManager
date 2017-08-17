package com.krishantha.eventManager.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "event")
public class Event {
	@Id
	@GeneratedValue
	@Column(name = "eventId")
	private Long id;
	@OneToMany(mappedBy = "event", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	List<Activity> activities;

	@Size(min = 5, max = 20, message = "Event name should between 5 and 10 characters")
	private String eventName;
	String eventType;

	public String getEventType() {
		return eventType;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Activity> getActivities() {
		return activities;
	}

	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}

	public void setEventType(String eventType) {
		this.eventType = eventType;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
}
