CREATE TABLE User (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender CHAR,
    Age INT,
    Mobile_No VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Pin_Code VARCHAR(20)
);

INSERT INTO User (ID, First_Name, Middle_Name, Last_Name, Gender, Age, Mobile_No, City, State, Pin_Code) VALUES
(1, 'Anushka', 'Kumari', 'Gupta', 'F', 20, '9890888666', 'Badarpur', 'Delhi', '110044'),
(2, 'Harshita', 'Kumari', 'Prajapati', 'F', 19, '9022336760', 'Roshanara', 'Delhi', '110007'),
(3, 'Khyati', 'Kumari', 'Singh', 'F', 19, '9022336563', 'Rohini', 'Delhi', '110087'),
(4, 'Geeta', 'Singh', 'Rajan', 'F', 22, '9024566760', 'Shahadra', 'Haryana', '11054'),
(5, 'Neha', 'Kumari', 'Sood', 'F', 21, '9992336760', 'Sarita Vihar', 'Haryana', '156007'),
(6, 'Muskaan', 'sharma', 'Ranjan', 'F', 20, '9023676760', 'Dwarka', 'Punjab', '113407');

SELECT * FROM User;

CREATE TABLE Payment (
    Pay_date VARCHAR(50),
    Ticket_Id INT,
    Paid_Amt INT,
    ID INT,
    Pay_Desc VARCHAR(50)
);

INSERT INTO Payment (Pay_date, Ticket_Id, Paid_Amt, ID, Pay_Desc) VALUES
('23/06/2021', 109900, 200, 1, 'UPI'),
('21/05/2020', 109834, 300, 2, 'BY cash'),
('13/02/2020', 106734, 156, 3, 'Net Banking'),
('25/06/2021', 109823, 799, 4, 'UPI'),
('09/08/2019', 109992, 425, 5, 'BY cash'),
('30/04/2020', 107843, 677, 6, 'UPI');

SELECT * FROM Payment;

CREATE TABLE Train (
    Train_Name VARCHAR(50),
    Train_No INT PRIMARY KEY,
    Train_Desc VARCHAR(50),
    Destination VARCHAR(50),
    Arrival_Time VARCHAR(50),
    Capacity INT
);

INSERT INTO Train (Train_Name, Train_No, Train_Desc, Destination, Arrival_Time, Capacity) VALUES
('Ashram Express', 1021, 'Third Class', 'Kolkata', '21:30:00', 700),
('Shatabdi Express', 1089, 'First Class', 'Allahabad', '16:30:00', 600),
('Harijan Express', 1290, 'Second Class', 'Madhya Pradesh', '13:00:00', 3600),
('Jammu Mail Express', 1345, 'Third Class', 'Madras', '22:00:00', 2500),
('Delhi Jaipur Double Decker', 1234, 'Third Class', 'Jaipur', '22:45:00', 800),
('Jaipur Delhi Double Decker', 1453, 'Third Class', 'Patna', '09:30:00', 800);

SELECT * FROM Train;

CREATE TABLE Station (
    Train_No INT,
    Station_No VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(50),
    Arrival_Time VARCHAR(50),
    Hault VARCHAR(50),
    Departure VARCHAR(50)
);

INSERT INTO Station (Train_No, Station_No, Name, Arrival_Time, Hault, Departure) VALUES
(1678, '101', 'Chandigarh', '10:00:00', '00:00:30', '22:05:00'),
(5678, '120', 'Delhi', '20:40:00', '00:00:10', '18:00:00'),
(1234, '371', 'Jaipur', '01:00:00', '00:00:25', '10:00:00'),
(3121, '230', 'Lucknow', '18:00:00', '00:00:35', '03:05:00'),
(3232, '123', 'Mumbai', '10:00:00', '00:00:28', '18:00:00'),
(1089, '110', 'Allahabad', '10:35:00', '00:00:35', '22:18:00');

SELECT * FROM Station;

CREATE TABLE Ticket (
    Ticket_Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Ticket_Price VARCHAR(50),
    PNR_No INT,
    Train_No INT,
    ID INT
);

INSERT INTO Ticket (Ticket_Id, Name, Ticket_Price, PNR_No, Train_No, ID) VALUES
(109900, 'Chandigarh', '200', '2346712891', '1678', 1),
(109834, 'Delhi', '300', '4566278123', '2341', 2),
(106734, 'Jaipur', '156', '3467345672', '9043', 3),
(109823, 'Lucknow', '799', '7635423112', '8754', 4),
(109992, 'Mumbai', '425', '5467345689', '2312', 5),
(107843, 'Allahabad', '677', '7823456129', '5632', 6);

SELECT * FROM Ticket;

CREATE TABLE Ticket_Status (
    Ticket_Status_ID INT PRIMARY KEY,
    Ticket_Id INT,
    Confirmed VARCHAR(50),
    RAC VARCHAR(50),
    Waiting VARCHAR(50),
    ID INT
);

INSERT INTO Ticket_Status (Ticket_Id, Confirmed, RAC, Waiting, ID) VALUES
(109900, 'Yes', 'No', 'No', 1),
(109834, 'No', 'Yes', 'No', 2),
(106734, 'No', 'Yes', 'No', 3),
(109823, 'No', 'No', 'Yes', 4),
(109992, 'Yes', 'No', 'No', 5),
(107843, 'No', 'No', 'Yes', 6),
(107843, 'No', 'Yes', 'No', 11),
(102344, 'Yes', 'No', 'No', 12);

SELECT * FROM Ticket_Status;
