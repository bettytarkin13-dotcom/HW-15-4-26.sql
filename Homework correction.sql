#Q1

CREATE TABLE workshop_roster(
    roster_id INTEGER PRIMARY KEY,
    contact_email TEXT NOT NULL UNIQUE,
    display_name TEXT NOT NULL,
    completion_score REAL NOT NULL CHECK (completion_score BETWEEN 0 AND 100),
    wants_certificate BOOLEAN DEFAULT FALSE,
    start_date date NOT NULL,
    last_activity datetime NOT NULL,
    group_label TEXT DEFAULT 'starter'
);

#Q4

INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date,last_activity,completion_score,group_label)VALUES
(6,'mika@campus.com','Maik',1,'2026-04-20','2026-04-20 10:00:00',80.0,'starter');
 #ERROR#
   #you cant insert this row because it violates the UNIQUE constraint on contact_email - "the email already exists"

#Q5
   
INSERT INTO workshop_roster (roster_id,contact_email,display_name,wants_certificate,start_date,last_activity,completion_score,group_label)VALUES
(6,'maik@campus.com','Maik',1,'2026-04-20','2026-04-20 10:00:00',120.0,'starter');

 #ERROR#
   #insert faild because it violates the CHECK constraint on completion_score - "The value must be between 0 and 100"

