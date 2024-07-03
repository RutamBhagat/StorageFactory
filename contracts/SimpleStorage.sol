// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19; // Version of the Solidity compiler to use

contract SimpleStorage {
    uint256 myFavoriteNumber;

    // uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber: 42, name: "Pat"});
    // Person public maria = Person({favoriteNumber: 16, name: "Maria"});
    // Person public john = Person({favoriteNumber: 12, name: "John"});

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138
    // 0x6080604052600560005534801561001557600080fd5b5060e3806100246000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c8063d80deced14602d575b600080fd5b60436004803603810190603f91906085565b6045565b005b8060008190555050565b600080fd5b6000819050919050565b6065816054565b8114606f57600080fd5b50565b600081359050607f81605e565b92915050565b6000602082840312156098576097604f565b5b600060a4848285016072565b9150509291505056fea26469706673582212209ca8e0606745365ccb1a64434a72050a440ac9524728bbec2964b730c164cfbf64736f6c63430008130033
}