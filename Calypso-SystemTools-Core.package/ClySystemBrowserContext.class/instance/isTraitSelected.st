selection-classes
isTraitSelected
	| classItem |
	classItem := self lastSelectedObjectIn: self selectedClassItems.
	^classItem isMarkedWith: ClyTraitTag