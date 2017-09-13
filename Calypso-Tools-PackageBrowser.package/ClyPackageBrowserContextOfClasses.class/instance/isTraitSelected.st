testing
isTraitSelected
	| classItem |
	classItem := self lastSelectedItem.
	^classItem isMarkedWith: ClyTraitTag