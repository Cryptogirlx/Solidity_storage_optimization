pragma solidity 0.7.4;

contract Assingment_Mapping {
    struct Entity {
        uint256 data;
        address entityAddress;
    }

    mapping(address => Entity) public entities;

    function addEntity(uint256 _data, address _entityAddress)
        public
        returns (bool success)
    {
        entities[_entityAddress].data = _data;
        entities[_entityAddress].entityAddress = msg.sender;
        return true;
    }

    function updateEntity(uint256 _data, address _entityAddress)
        public
        returns (bool success)
    {
        require(_entityAddress == msg.sender);
        entities[_entityAddress].data = _data;
        return true;
    }
}
