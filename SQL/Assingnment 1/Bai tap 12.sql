drop database if exists Testing_System_Assignment;
create database Testing_System_Assignment;
use  Testing_System_Assignment;
create table Department (
	DepartmentID INT UNSIGNED PRIMARY KEY,
	DepartmentName NVARCHAR(50) NOT NULL
	);

CREATE table Position (
	PositionID TINYINT UNSIGNED PRIMARY KEY,
	PositionName varchar(50)
	);
    

create table Account (
	AccountID TINYINT UNSIGNED PRIMARY KEY,
	Email varchar(50),
	Username varchar(50),
	FullName varchar(50),
	DepartmentID TINYINT UNSIGNED,
	PositionID TINYINT UNSIGNED,
	CreateDate date
	);
    
create table Groupx (
    GroupID TINYINT UNSIGNED PRIMARY KEY,
    GroupName varchar(50),
    CreatorID TINYINT UNSIGNED,
    CreateDate date
    );
    
create table GroupAccount (
	GroupID TINYINT UNSIGNED,
	AccountID TINYINT UNSIGNED PRIMARY KEY,
	JoinDate date
	);

create table TypeQuestion (
	TypeID TINYINT UNSIGNED PRIMARY KEY,
	TypeName varchar(50)
	);

create table CategoryQuestion (
	CategoryID TINYINT UNSIGNED PRIMARY KEY,
	CategoryName varchar(50)
	);

create table Question (
	QuestionID TINYINT UNSIGNED PRIMARY KEY,
	Content varchar(100),
	CategoryID TINYINT UNSIGNED,
	TypeID TINYINT UNSIGNED,
	CreatorID TINYINT UNSIGNED,
	CreateDate date
	);
create table Answer (
	AnswerID TINYINT UNSIGNED PRIMARY KEY,
	Content varchar(100),
	QuestionID TINYINT UNSIGNED,
	isCorrect varchar(50)
	);

create table Exam (
	ExamID TINYINT UNSIGNED PRIMARY KEY,
	Codee TINYINT UNSIGNED,
	Title varchar(100),
	CategoryID TINYINT UNSIGNED,
	Duration time,
	CreatorID TINYINT UNSIGNED,
	CreateDate date
	);

create table ExamQuestion (
	ExamID TINYINT UNSIGNED,
	QuestionID TINYINT UNSIGNED PRIMARY KEY
	);















