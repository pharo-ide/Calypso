accessing
chooseClassesForNewMethod: aMethod

	| methodClass selectedClasses |
	methodClass := aMethod origin.
	
	selectedClasses := self selectClassesForNewMethod.
	selectedClasses := selectedClasses copyWithout: methodClass.
	^{methodClass} , selectedClasses