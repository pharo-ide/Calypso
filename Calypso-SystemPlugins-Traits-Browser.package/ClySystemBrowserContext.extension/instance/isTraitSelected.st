*Calypso-SystemPlugins-Traits-Browser
isTraitSelected
	| classItem |
	classItem := self lastSelectedObjectIn: self selectedClassItems.
	^classItem isMarkedWith: ClyTraitTag