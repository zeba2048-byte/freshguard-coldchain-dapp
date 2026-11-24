// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FreshGuardSLA {
    int16 public constant MAX_SAFE_TEMP = 400; // 4.00°C
    bool public breachDetected = false;
    string public latestIpfsHash;

    event StatusUpdated(int16 temperature, string ipfsHash, bool breach);

    function logTemperature(int16 _temp, string memory _ipfsHash) public {
        latestIpfsHash = _ipfsHash;
        if (_temp > MAX_SAFE_TEMP) {
            breachDetected = true;
        }
        emit StatusUpdated(_temp, _ipfsHash, breachDetected);
    }
}
