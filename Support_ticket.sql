Create database Customer_support_tickets;
Use Customer_support_tickets; 
CREATE TABLE tickets (
    Ticket_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID VARCHAR(50),
    First_Response_Time DATETIME,
    Time_to_Resolution DATETIME,
    Agent VARCHAR(100),
    Region VARCHAR(100),
    Product_Module VARCHAR(100),
    Status VARCHAR(50),
    Priority VARCHAR(50),
    Issue_Type VARCHAR(100),
    Customer_Satisfaction INT,
    Channel VARCHAR(50),
    Feedback_Comment TEXT,
    Reopen_Count INT
);
LOAD DATA INFILE 'C:/Users/bvish/PycharmProjects/Customer_support_tickets/Customer_Support_tickets.csv'
INTO TABLE tickets
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Customer_ID, First_Response_Time, Time_to_Resolution, Agent, Region, Product_Module, Status, Priority, Issue_Type, Customer_Satisfaction, Channel, Feedback_Comment, Reopen_Count);
