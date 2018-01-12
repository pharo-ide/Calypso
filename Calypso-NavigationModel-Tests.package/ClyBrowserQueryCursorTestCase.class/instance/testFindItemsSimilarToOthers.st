tests
testFindItemsSimilarToOthers
	
	| found |
	found := cursor findItemsSimilarTo: ({Class. Array} collect: #asCalypsoBrowserItem).
	
	self assert: found size equals: 1.
	self assert: found first actualObject equals: Array.
	self assert: found first isPrepared.
	self assert: found first position equals: (self rawResultItems indexOf: Array).