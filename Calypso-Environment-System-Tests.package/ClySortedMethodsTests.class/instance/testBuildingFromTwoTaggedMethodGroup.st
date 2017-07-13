tests-tagged methods
testBuildingFromTwoTaggedMethodGroup
	| groups |
	groups := {ClyTaggedMethodGroup classes: {ClyClass1FromP1} tag: 'tag1'.
			ClyTaggedMethodGroup classes: {ClyClass1FromP1} tag: 'superclassTag1'}.
		
	self retrieveFromGroups: groups.

	self assertMethods: #(#superclassTag1Method #tag1Method1)