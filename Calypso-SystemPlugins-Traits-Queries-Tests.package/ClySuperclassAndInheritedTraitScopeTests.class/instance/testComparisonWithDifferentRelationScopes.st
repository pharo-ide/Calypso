tests
testComparisonWithDifferentRelationScopes

	| scope2 |
	scope := ClyMultipleClassRelationScope 
		of: #() merging: {ClySuperclassScope. ClyInheritedTraitScope }.
	scope2 := ClyMultipleClassRelationScope 
		of: #() merging: {ClySuperclassScope. ClyTraitUserScope }.
	
	self deny: scope = scope2