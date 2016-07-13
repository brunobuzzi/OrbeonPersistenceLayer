The basic abstract class to represent Orbeon Form using Smalltalk objects.

id 						- id of the form, is identical to the id in MySQL database (mysql).
form 					- name of the form (mysql).
app						- application's name, where the form belongs (mysql).
createdTime 		- time stamp when created (mysql).
modifiedTime 		- time stamp where last modified (mysql).
modifiedUser 		- last modifier user name (mysql).
deleted				- whether the form is deleted or not (mysql).
fieldNames 			- collection of field's names.
xmlString 			- xml that represent the form (mysql).
xmlDocument 		- DOM document to process the form (usually is nil but when processing some value)
version				- version of the form (mysql).