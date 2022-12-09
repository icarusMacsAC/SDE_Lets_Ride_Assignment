use amit1;

-- Requester Login information
-- -----------------------------------------------------

drop table requester_user;

CREATE TABLE requester_user (
	user_name VARCHAR(256),
    first_name VARCHAR(256) NOT NULL,
    last_name VARCHAR(256) NOT NULL,
    user_password VARCHAR(256) NOT NULL,
    PRIMARY KEY(user_name)
);
SELECT user_name FROM requester_user WHERE user_name LIKE "%amit_chourey%";

SELECT * FROM requester_user;

INSERT INTO requester_user(user_name, first_name, last_name, user_password) values
	("aditya_chourey", "Aditya", "Chourey", "Aditya!@#$"),
    ("sumit_chourey", "Sumit", "Chourey", "Sumit!@#$"),
    ("bhavesh_goswami", "Bhavesh", "Goswami", "Bhavesh!@#$"),
    ("mantu_kumar_pandey", "Mantu Kumar", "Pandey", "Mantukumar!@#$"),
    ("kundan_kumar_deshmukh", "Kundan Kumar", "Deshmukh", "Kundankumar!@#$"),
    ("arnav_singh", "Arnav", "Singh", "Arnav!@#$"),
    ("pradeep_meena", "Pradeep", "Meena", "Pradeep!@#$");
    


-- Requester data
-- -----------------------------------------------------

drop table requester;

CREATE TABLE requester (
	request_id INT AUTO_INCREMENT,
    user_name varchar(256) NOT NULL,
    src VARCHAR(256) NOT NULL,
    destination VARCHAR(256) NOT NULL,
    deliver_date datetime NOT NULL,
    flexible_timimg BOOL,
    no_of_assets INT DEFAULT 0,
    asset_type VARCHAR(256) NOT NULL,
    asset_sensitivity VARCHAR(256) NOT NULL,
    whom_to_deliver VARCHAR(256) NOT NULL,
    asset_status VARCHAR(256)  DEFAULT "PENDING",
    PRIMARY KEY(request_id)
);

INSERT INTO requester (user_name, src, destination, deliver_date, flexible_timimg, no_of_assets, asset_type, asset_sensitivity, whom_to_deliver)
values
    ("aditya_chourey", "Jhanshi", "Pune", "2022-12-15 12:45:56", true, 3, "TRAVEL_BAG", "SENSITIVE", "akshat_singh"),
    ("sumit_chourey", "Pachmari", "Hyderabad", "2022-12-15 12:45:56", false, 1, "PACKAGE", "NORMAL", "pranav_mehta"),
    ("chaitanya_lohe", "Pandurna", "Narmadapuram", "2022-12-15 12:45:56", true, 2, "LAPTOP", "HIGHLY_SENSITIVE", "amit_chourey"),
    ("bhavesh_goswami", "Jhanshi", "Bangalore", "2022-12-15 12:45:56", true, 4, "TRAVEL_BAG", "SENSITIVE", "akshat_singh"),
    ("mantu_kumar_pandey", "Pachmari", "Jhanshi", "2022-12-15 12:45:56", false, 5, "PACKAGE", "NORMAL", "pranav_mehta"),
    ("kundan_kumar_deshmukh", "Hyderabad", "Lucknow", "2022-12-15 12:45:56", true, 1, "LAPTOP", "HIGHLY_SENSITIVE", "arnav_singh"),
    ("arnav_singh", "Bangalore", "Delhi", "2022-12-15 12:45:56", true, 4, "TRAVEL_BAG", "SENSITIVE", "akshat_singh"),
    ("pradeep_meena", "Lucknow", "Pachmari", "2022-12-15 12:45:56", true, 2, "PACKAGE", "NORMAL", "pranav_mehta");

SELECT * FROM requester;