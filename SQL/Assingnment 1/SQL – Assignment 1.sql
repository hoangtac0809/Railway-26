DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE Department (
			DepartmentID	INT,
			DepartmentName	VARCHAR(50)
            );
            
            
     CREATE TABLE PositionID (
			PositionID	INT,
			PositionName	VARCHAR(50)
            );       
            
	 CREATE TABLE Account (
			AccountID	INT,
			Email	VARCHAR(50),
            Username VARCHAR(50),
            FullName VARCHAR(50),
            DepartmentID INT,
            PositionID  INT,
            CreateDate DATE
			);       
            
	CREATE TABLE Groupp (
			GroupID	INT,
			GroupName VARCHAR(50),
            CreatorID INT,
            CreateDate DATE
            );       
            
      CREATE TABLE GroupAccount (
			GroupID	INT,
            AccountID INT,
			JoinDate	DATE
            );               
            
   CREATE TABLE TypeQuestion (
			TypeID	INT,
			TypeName	VARCHAR(50)
            );                
            
            
  CREATE TABLE CategoryQuestion (
			TypeID	INT,
			CategoryID	VARCHAR(50)
            );                  
   
CREATE TABLE Question (
			QuestionID	INT,
			Content	VARCHAR(50),
            CategoryID	INT,
            TypeID INT,
            CreatorID  INT,
            CreateDate DATE
			);          
   
   CREATE TABLE Answer (
		    AnswerID	INT,
			Content	VARCHAR(50),
            QuestionID INT,
            isCorrect VARCHAR(50)
            );              
   
   
   CREATE TABLE Exam (
		    ExamID	INT,
			Code	INT,
            QuestionID INT,
            Title VARCHAR(50),
            CategoryID VARCHAR(50),
            Duration TIME,
            CreatorID INT,
            CreateDate DATE
            );   
            
   CREATE TABLE ExamQuestion (
		    ExamID	INT,
            QuestionID INT
            );                       
   
   
   