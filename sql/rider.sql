use amit1;

-- Rider Login information
-- -----------------------------------------------------
drop table rider_user;
CREATE TABLE rider_user (
	user_name VARCHAR(256),
    first_name VARCHAR(256) NOT NULL,
    last_name VARCHAR(256) NOT NULL,
    user_password VARCHAR(256) NOT NULL,
    PRIMARY KEY(user_name)
);
INSERT INTO rider_user(user_name, first_name, last_name, user_password) values
	("Rider1", "Rider", "1", "Rider1!@#$"),
    ("Rider2", "Rider", "2", "Rider2!@#$");
    
SELECT * FROM rider_user;
    
-- Rider data
-- -----------------------------------------------------
drop table rider;
CREATE TABLE rider (
	travel_id INT AUTO_INCREMENT,
    user_name varchar(256) NOT NULL,
    src VARCHAR(256) NOT NULL,
    destination VARCHAR(256) NOT NULL,
    deliver_date datetime NOT NULL,
    flexible_timimg BOOL,
    travel_medium VARCHAR(256) NOT NULL,
    asset_quantity INT DEFAULT 0,
    asset_status VARCHAR(256) DEFAULT "NOT_APPLIED",
    PRIMARY KEY(travel_id)
);

INSERT INTO rider (user_name, src, destination, deliver_date, flexible_timimg, travel_medium, asset_quantity)
values
    ("rider3", "Jhanshi", "Pune", "2022-12-15 12:45:56", true, "CAR", 5);
    
SELECT * FROM rider;

SELECT DISTINCT req.request_id, rid.travel_id, req.no_of_assets,  rid.asset_quantity FROM requester as req INNER JOIN rider as rid 
ON req.src = rid.src and req.destination = rid.destination and req.deliver_date = rid.deliver_date 
WHERE req.user_name="aditya_chourey" and req.asset_status = "PENDING" and rid.asset_status = "NOT_APPLIED" and req.no_of_assets <= rid.asset_quantity
ORDER BY req.request_id;