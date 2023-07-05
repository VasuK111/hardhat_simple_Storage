
pragma solidity 0.8.7;

contract SimpleStorage {
    uint256 favouriteNumber;
    
    
    
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    // uint256[] public anArray;
    People[] public people;

    mapping(string => uint256) public nameTofavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameTofavouriteNumber[_name] = _favouriteNumber;
    }
}