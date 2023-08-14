// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Dcvs{

    struct Certificate {
        string name;
        string degree;
        uint256 graduationDate;
    }

    mapping(bytes32 hash => Certificate) public certificates;

    address public owner;
     
    event CertificateCreated(address , bytes32);

    constructor(){
        owner = msg.sender;
    }

    function createCertifiate(string memory _name,string memory _degree, uint256 _graduationDate) public returns(bytes32) {
        require(owner == msg.sender , "Only Owner can call this function");
        bytes32 certificateHash = keccak256(abi.encodePacked(_name,_degree,_graduationDate));
        certificates[certificateHash] = Certificate(_name,_degree,_graduationDate);
        emit CertificateCreated(msg.sender, certificateHash);
        return certificateHash;
        
        
    }

    function verifyCertificate(bytes32 _hash) public view returns(string memory name ,string memory degree, uint256 graduationDate){
        Certificate memory cert = certificates[_hash];
        require(bytes(cert.name).length > 0 , "Certificate Not Found");
        return (cert.name ,cert.degree , cert.graduationDate);

    }

    function getCertificate(bytes32 _hash) public view returns(string memory ,string memory ,uint256){
        Certificate memory certificate = certificates[_hash];
        return (certificate.name , certificate.degree , certificate.graduationDate);
    }

}