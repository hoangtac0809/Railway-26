DROP DATABASE IF EXISTS Testing_System_Assignment_2;
CREATE DATABASE Testing_System_Assignment_2;
USE Testing_System_Assignment_2;

CREATE TABLE Department (
			DepartmentID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
			DepartmentName	VARCHAR(50) UNIQUE KEY NOT NULL
            );
            
            
     CREATE TABLE `Position` (
			PositionID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			PositionName	ENUM('(Dev','Test','Scrum Master','PM','') NOT NULL
            );       
            
	 CREATE TABLE `Account` (
			AccountID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			Email	VARCHAR(50) UNIQUE KEY NULL,
            Username VARCHAR(50) UNIQUE KEY CHECK (length(Username)>=6),
            FullName VARCHAR(50) CHECK (length(FullName)>=6),
            DepartmentID TINYINT UNSIGNED NOT NULL,
            PositionID  TINYINT UNSIGNED NOT NULL,
            CreateDate DATE NOT NULL,
            Age TINYINT UNSIGNED CHECK(Age>=18 AND Age<=50),
	foreign key (DepartmentID) references Department(DepartmentID),
    foreign key (PositionID) references `Position`(PositionID)
    );
            
	CREATE TABLE `Group` (
			GroupID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			GroupName VARCHAR(50) UNIQUE KEY NOT NULL CHECK (length(GroupName)>=6),
            CreatorID TINYINT UNSIGNED NOT NULL,
            CreateDate DATE,
            foreign key (CreatorID) references `Account`(AccountID)
            );       
            
      CREATE TABLE GroupAccount (
			GroupID	TINYINT UNSIGNED,
            AccountID TINYINT UNSIGNED,
			JoinDate	DATE,
            PRIMARY KEY(GroupID,AccountID),
       foreign key (GroupID) references `Group`(GroupID),
        foreign key (AccountID) references `Account`(AccountID)
    );               
            
   CREATE TABLE TypeQuestion (
			TypeID	TINYINT UNSIGNED PRIMARY KEY,
			TypeName ENUM('Essay','Multiple-Choice') NOT NULL
            );                
            
            
  CREATE TABLE CategoryQuestion (
			TypeID	TINYINT UNSIGNED AUTO_INCREMENT,
			CategoryID	VARCHAR(50) ,
            PRIMARY KEY(TypeID,CategoryID),
            foreign key (TypeID) references TypeQuestion (TypeID)
            );                  
   
CREATE TABLE Question (
			QuestionID	TINYINT UNSIGNED PRIMARY KEY,
			Content	VARCHAR(50) NOT NULL,
            CategoryID	TINYINT UNSIGNED UNIQUE KEY NOT NULL,
            TypeID TINYINT UNSIGNED NOT NULL,
            CreatorID TINYINT UNSIGNED UNIQUE KEY NOT NULL,
            CreateDate DATE NOT NULL,
           foreign key (TypeID) references CategoryQuestion (TypeID)
			);          
   
   CREATE TABLE Answer (
		    AnswerID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			Content	VARCHAR(50) NOT NULL,
            QuestionID TINYINT UNSIGNED NOT NULL,
            isCorrect ENUM(' right','wrong') NOT NULL,
            foreign key (QuestionID) references Question (QuestionID)
            );              
   
   
   CREATE TABLE Exam (
		    ExamID	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
			`Code`	TINYINT UNSIGNED UNIQUE KEY NOT NULL,
            Title VARCHAR(50),
            CategoryID VARCHAR(50) UNIQUE KEY NOT NULL,
            Duration TIME NOT NULL,
            CreatorID TINYINT UNSIGNED UNIQUE KEY,
            CreateDate DATE NOT NULL
            );
            
   CREATE TABLE ExamQuestion (
		    ExamID	TINYINT UNSIGNED PRIMARY KEY UNIQUE KEY,
            QuestionID TINYINT UNSIGNED UNIQUE KEY NOT NULL,
            foreign key (ExamID) references Exam (ExamID),
            foreign key (QuestionID) references Question (QuestionID)
            );              
			
   
   
   