*Calypso-SystemPlugins-Traits-Browser
isSelectedClassUsesTraits
	| classItem |
	classItem := self lastSelectedObjectIn: self selectedClassItems.
	
	^classItem isMarkedWith: ClyTraitUserTag