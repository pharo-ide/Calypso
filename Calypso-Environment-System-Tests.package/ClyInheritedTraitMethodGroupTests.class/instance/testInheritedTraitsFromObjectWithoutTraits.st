tests
testInheritedTraitsFromObjectWithoutTraits

	| actual |
	group classScope: { Object }.
	
	actual := group inheritedTraits asArray.
	
	self assert: actual equals: #()