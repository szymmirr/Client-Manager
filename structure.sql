CREATE TABLE client(
   id SERIAL PRIMARY KEY     NOT NULL,
   first_name        TEXT    NOT NULL,
   last_name         TEXT    NOT NULL,
   passport_number   CHAR(9) NOT NULL
);

CREATE TABLE guide(
   id SERIAL PRIMARY KEY  NOT NULL,
   first_name        TEXT NOT NULL,
   last_name         TEXT NOT NULL
);

CREATE TABLE destination(
   id SERIAL PRIMARY KEY NOT NULL,
   country        TEXT   NOT NULL,
   city           TEXT   NOT NULL
);

CREATE TABLE trip(
   id SERIAL PRIMARY KEY     NOT NULL,
   destination_id       INT  NOT NULL,
   departure_date       DATE NOT NULL,
   return_date          DATE NOT NULL,
   suggested_price      INT  NOT NULL,
   guide_id             INT  NOT NULL,
   CONSTRAINT fk_destination
      FOREIGN KEY(destination_id)
	     REFERENCES destination(id),
   CONSTRAINT fk_guide
      FOREIGN KEY(guide_id)
	     REFERENCES guide(id)
);

CREATE TABLE booking(
   id SERIAL PRIMARY KEY  NOT NULL,
   trip_id            INT NOT NULL,
   client_id          INT NOT NULL,
   negotiated_price   INT NOT NULL,
   CONSTRAINT fk_trip
      FOREIGN KEY(trip_id) 
	     REFERENCES trip(id),
   CONSTRAINT fk_client
      FOREIGN KEY(client_id)
	     REFERENCES client(id)
);
