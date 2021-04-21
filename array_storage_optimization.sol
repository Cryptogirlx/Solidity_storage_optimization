pragma solidity 0.7.4;

contract AssignmentArray {
    struct Entity {
        address entityAddress;
        uint256 data;
    }

    Entity[] public entities;

    function addEntity(address entityAddress, uint256 data)
        public
        returns (bool success)
    {
        Entity memory newEntity;

        newEntity.entityAddress = msg.sender;
        newEntity.data = data;
        entities.push(newEntity);

        return true;
    }

    function getIndex(address entityAddress)
        public
        view
        returns (uint256 index)
    {
        for (uint256 i = 0; i < entities.length; i++) {
            return index;
        }
    }

    function updateEntity(
        address entityAddress,
        uint256 data,
        uint256 index
    ) public returns (bool success) {
        require(entities.length != 0);
        require(entityAddress == msg.sender);

        entities[index].data = data;

        return true;
    }
}
