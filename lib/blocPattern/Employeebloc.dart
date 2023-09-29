//TODO:Imports
//TODO:List of employees
//TODO:Stream Controllers
//TODO:Stream sink getter
//TODO:Constructor - add data; listen to changes
//TODO:Core functions
//TODO:dispose

import 'dart:async';

import 'package:flutter/material.dart';
import './Employeemodel.dart';

class EmployeeBloc
{
  List<Employee>_employeeList=[
    Employee(1,'Thiru',1000),
    Employee(2,'Abd',900),
    Employee(3,'msd',800),
    Employee(4,'gsp',700),
    Employee(5,'Rvd',600)];

//Streamcontrollers:
  final employeeliststreamcontroller=StreamController<List<Employee>>();
  final _employeeincrementstreamcontroller=StreamController<Employee>();
  final _employeedecrementstreamcontroller=StreamController<Employee>();

  //Getters and setters:

Stream<List<Employee>> get employeeliststream=>employeeliststreamcontroller.stream;

StreamSink get _employeelistsink=>employeeliststreamcontroller.sink;

StreamSink get _employeeincrementsink=>_employeeincrementstreamcontroller.sink;

StreamSink get _employeedecrementsink=>_employeedecrementstreamcontroller.sink;

//add data and listen to the changes

EmployeeBloc()
{
  employeeliststreamcontroller.add(_employeeList);


  _employeeincrementstreamcontroller.stream.listen(_incrementSalary);
  _employeedecrementstreamcontroller.stream.listen(_decrementSalary);
}

_incrementSalary(Employee employee)
{
  double salary=employee.salary;
  double decrementedsalary=salary*20/100;
  _employeeList[employee.id-1].salary=salary+decrementedsalary;
  _employeelistsink.add(_employeeList);
}

_decrementSalary(Employee employee)
{

  double salary=employee.salary;
  double decrementedsalary=salary*20/100;
  _employeeList[employee.id-1].salary=salary-decrementedsalary;
  _employeelistsink.add(_employeeList);
}
//dispose
void dispose()
{
  employeeliststreamcontroller.close();
  _employeedecrementstreamcontroller.close();
  _employeedecrementstreamcontroller.close();
}





}