tests
testInheritedTraitsFromObjectWithoutTraits

	| actual |
	group classes: { Object }.
	
	actual := group inheritedTraits asArray.
	
	self assert: actual equals: #()