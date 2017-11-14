tests-untagged methods
testBuildingFromNoTagMethodGroup
	| group |
	group := ClyNoTagMethodGroup classScope: {ClySubclassN1OfClass1FromP1 }.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#noTagMethod)