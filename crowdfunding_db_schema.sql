/* import works manually in order from top to bottom */

CREATE Table category (
	category_id CHAR(4) Primary Key,
	category varchar(20)
);

CREATE Table subcategory (
	subcategory_id VARCHAR(8) Primary Key,
	subcategory varchar(20)
);

CREATE Table contacts (
	contact_id int Primary Key,
	first_name varchar(15),
	last_name varchar(15),
	email varchar(70)
);

CREATE Table campaign (
	cf_id int Primary Key,
	contact_id int,
	foreign key (contact_id) references contacts(contact_id),
	company_name varchar(50),
	description varchar(100),
	goal float(8),
	pledged float(8),
	outcome varchar(10),
	backers_count int,
	country char(2),
	currency char(3),
	launch_date char(10),
	end_date char(10),
	category_id char(4),
	foreign key (category_id) references category(category_id),
	subcategory_id varchar(8),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);