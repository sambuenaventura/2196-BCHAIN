// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract StructsDemo {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function someApplications() external {
        Car memory toyota = Car("Toyota", 2024, msg.sender);
        Car memory mazda = Car({year: 2024, model: "Mazda 3", owner: msg.sender});
        Car memory tesla;

        tesla.model = "Tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(mazda);
        cars.push(tesla);

        cars.push(Car("Mercedes", 2020, msg.sender));

        Car storage _car = cars[0];
        _car.year = 2024;
        delete _car.owner;

        delete cars[1];
    }
}