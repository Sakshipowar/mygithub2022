public with sharing class StudentController {
    public String student{get;set;}
    public StudentController(){
        student='abc';
        
    }
    public void fetchStudent(){
        student='Pqr';
    }

}