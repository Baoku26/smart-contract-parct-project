//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EmployeeSalaryTracker {
    struct EmployeeDetails {
        string name;
        uint256 salary;
        address walletAddress;
        string gender;
    }

    mapping(string => mapping(string => EmployeeDetails)) public employee_salary;

    function addEmployee(string memory _department, string memory _name, uint256 _salary, address _walletAddress, string memory _gender) public {
        employee_salary[_department][_name] = EmployeeDetails(_name, _salary, _walletAddress, _gender);
    }

    function updateSalary(string memory _department, string memory _name, uint256 _newSalary) public {
        EmployeeDetails storage employee = employee_salary[_department][_name];

        employee.salary = _newSalary;
    }

    // mapping(address => mapping(address => Employee)) public employee;


    // function addEmployee(address _employee, string memory _name, uint _salary)  public{
    //     employee[msg.sender][_employee] = Employee(_name, _salary);
    // }

    // function UpdateSalary(address _employee, uint _newSalary) public{
    //     employee[msg.sender][_employee].salary = _newSalary;
    // }

    // function getSalary(address _company, address _employee) public view returns(string memory name, uint salary) {
    //     Employee memory employe = employee[_company][_employee];
    //     return(employe.name, employe.salary);
    // }

    // function updateSalary(string memory _employeeName, uint _newSalary) external {
    //     employee[_employeeName].salary = _newSalary;

    // }

    // function retriveEmployeeSalary(string memory _employeeName) external view returns(uint256) {
    //     return employee[_employeeName].salary;
    // }
}