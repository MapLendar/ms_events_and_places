# Events and places microservice

This microservice handles all the things related to events and places

## Events

### Description

An event is something intended to happen in a certain place during a certain ammount of time

### Model

* **id** *(primary key, auto-incremental, auto-generated)* **:** Event's identifier inside the database.
* **name** *(string)* **:** Event's name.
* **description** *(string)* **:** Event's description.
* **place_id** *(integer, foreign key to places)* **:**  Associated place (must be in plaaces database).
* **start_time** *(datetime)* **:** Event's start date and time.
* **end_time** *(datetime)* **:** Event's finalization date and time.
* **owner_id** *(integer, foreign key to users)* **:** User id of the creator of the event.

## Places

### Description

A place is the physical location of ocurrence of an event.

### Model

* **id** *(primary key, auto-incremental, auto-generated)* **:** Place's identifier inside the database.
* **name** *(string)* **:** Place's name.
* **longitude** *(float)* **:** Place's longitude in decimal degrees.
* **latitude** *(float)* **:**  Place's latitude in decimal degrees.
* **image** *(string)* **:** Place's photo URL.
