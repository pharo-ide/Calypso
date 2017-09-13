testing
isSelectedClassUsesTraits
	| classItem |
	classItem := self lastSelectedItem.
	^classItem isMarkedWith: ClyTraitUserTag