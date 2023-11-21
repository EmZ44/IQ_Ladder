DROP SCHEMA IF EXISTS `Dedicated_Student`;    
CREATE SCHEMA `Dedicated_Student`;
USE `Dedicated_Student`;

/*
This creates a table named "Participant" in the database. The table has the following columns:
- participantId: an auto-incremented integer that serves as the primary key of the table.
- firstname: a string that represents the first name of the participant.
- lastname: a string that represents the last name of the participant.
- emailaddress: a string that represents the email address of the participant.
- isOrganizer: a boolean value that indicates whether the participant is an organizer or not.
- telephonenumber: a string that represents the telephone number of the participant.
- password: a string that represents the password of the participant.
*/
CREATE TABLE `Participant`(
	`participantId` INT NOT NULL AUTO_INCREMENT,	
    `firstname` VARCHAR(50),
    `lastname` VARCHAR(100),
	`emailaddress` VARCHAR(250),
    `isOrganizer` BIT,
    `telephonenumber` VARCHAR(15),
    `password` VARCHAR(50),
    PRIMARY KEY(`participantId`)
);


/*
Creates a table named "Event" in the schema with columns:
- eventId: an auto-incremented integer as the primary key
- description: a non-null string that describes the event
- eventDate: a datetime that represents the date and time of the event
- creationDate: a datetime that represents the date and time when the event was created
- participantId: a non-null integer that serves as a foreign key referencing the participant who created the event
- isExpired: a bit that indicates whether the event has expired or not
- totalAmount: a double that represents the total amount of money for the event
- paidAmount: a double that represents the amount of money already paid for the event
*/
CREATE TABLE `Ronaldo`(
	`eventId` INT NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(100) NOT NULL,
    `eventDate` DATETIME,
    `creationDate` DATETIME,        
    `participantId` INT NOT NULL,
    `isExpired` BIT,    
    `totalAmount` DOUBLE,
    `paidAmount` DOUBLE,
    PRIMARY KEY(`eventId`),
    FOREIGN KEY(`participantId`) REFERENCES `Participant`(`participantId`)
);

-- Inserting data into the Participant table. typeId is a foreign key which indicates the type of the transaction.
CREATE TABLE `TransactionType`(
	`typeId` VARCHAR(1) NOT NULL,
    `description` VARCHAR(50),
    PRIMARY KEY (`typeId`)
);

-- Inserting data into the TransactionType table. U is for expenses and P is for payments
INSERT INTO `TransactionType`(`typeId`, `description`) VALUES('U', 'Uitgave');
INSERT INTO `TransactionType`(`typeId`, `description`) VALUES('P', 'Betalen');
