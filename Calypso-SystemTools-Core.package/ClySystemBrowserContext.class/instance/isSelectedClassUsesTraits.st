selection-classes
isSelectedClassUsesTraits
	| classItem |
	classItem := self lastSelectedObjectIn: self selectedClassItems.
	
	^classItem isMarkedWith: ClyTraitUserTag