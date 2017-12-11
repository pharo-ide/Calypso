tests
testComparisonWithDifferentRelationScopes

	| scope2 |
	scope := ClyMultipleClassRelationScope 
		of: #() merging: {ClySuperclassScope }.
	scope2 := ClyMultipleClassRelationScope 
		of: #() merging: {ClySubclassScope}.
	
	self deny: scope = scope2