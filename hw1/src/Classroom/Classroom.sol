// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    mapping(address => bool) public registeredUsers;
    uint256 public totalRegisteredUsers;

    event UserRegistered(address indexed user);
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        require(!registeredUsers[msg.sender], "Already registered");
        
        registeredUsers[msg.sender] = true;
        totalRegisteredUsers++;
        emit UserRegistered(msg.sender);
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
    }
}
