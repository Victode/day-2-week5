CREATE TABLE "Movie" (
	"movie_id" integer NOT NULL,
	"film_name" varchar(255) NOT NULL,
	CONSTRAINT "Movie_pk" PRIMARY KEY ("movie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Customer" (
	"customer_id" serial NOT NULL,
	"first_name" varchar(255) NOT NULL,
	"last_name" varchar(255) NOT NULL,
	"ticket_id" integer NOT NULL,
	"concession_id" integer NOT NULL,
	CONSTRAINT "Customer_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Ticket" (
	"ticket_id" serial NOT NULL,
	"ticket_price" money NOT NULL,
	"quantity" integer NOT NULL,
	"movie_id" integer NOT NULL,
	CONSTRAINT "Ticket_pk" PRIMARY KEY ("ticket_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Concession" (
	"concession_id" serial NOT NULL,
	"item_price" money NOT NULL,
	"item_quantity" integer NOT NULL,
	CONSTRAINT "Concession_pk" PRIMARY KEY ("concession_id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Customer" ADD CONSTRAINT "Customer_fk0" FOREIGN KEY ("ticket_id") REFERENCES "Ticket"("ticket_id");
ALTER TABLE "Customer" ADD CONSTRAINT "Customer_fk1" FOREIGN KEY ("concession_id") REFERENCES "Concession"("concession_id");

ALTER TABLE "Ticket" ADD CONSTRAINT "Ticket_fk0" FOREIGN KEY ("movie_id") REFERENCES "Movie"("movie_id");





