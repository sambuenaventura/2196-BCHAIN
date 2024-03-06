// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;


contract gradeContract {
    
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    string studentName;
    uint256 prelimGrade;
    uint256 midtermGrade;
    uint256 finalGrade;
    uint256 grade;


    // STUDENT NAME
    function setName(string calldata _name) public {
        studentName = _name;
    }

    function name() public view returns (string memory){
        return studentName;
    }

    // PRELIM GRADE
    function setPrelimGrade(uint256 _prelimGrade) external onlyOwner {
        prelimGrade = _prelimGrade;
        require(prelimGrade !=0, "Grade must be between 0 and 100");
    }

    function getPrelimGrade() public view returns (uint256){
        return prelimGrade;
    }

    // MIDTERM GRADE
    function setMidtermGrade(uint256 _midtermGrade) external onlyOwner {
        midtermGrade = _midtermGrade;
        require(midtermGrade !=0, "Grade must be between 0 and 100");

    }

    function getMidtermGrade() public view returns (uint256){
        return midtermGrade;
    }

    // FINAL GRADE
    function setFinalGrade(uint256 _finalGrade) external onlyOwner {
        finalGrade = _finalGrade;
        require(finalGrade !=0, "Grade must be between 0 and 100");

    }

    function getFinalGrade() public view returns (uint256){
        return finalGrade;
    }


    // OWNER ADDRESS
    function getOwner() external view returns (address) {
        return owner;
    }

    // CALCULATE GRADE
    function calculateGrade() external view returns (uint256)  {
        return (prelimGrade + midtermGrade + finalGrade) / 3;

    }

    // GRADE STATUS
    function gradeStatus() external view returns (uint256) {
        // if (grade < 70) {

        // }
    }
}
