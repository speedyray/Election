pragma solidity ^0.5.0;

contract Election {

	//Model the Candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}

	// Store our Candidates
	mapping(uint => Candidate) public candidates;

	// Store Candidate Count
	uint public candidatesCount;

	// constructor
	constructor() public{
      addCandidate("Candidate 1");
      addCandidate("Candidate 2");
	}

	function addCandidate(string memory _name) private{
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

	}


}