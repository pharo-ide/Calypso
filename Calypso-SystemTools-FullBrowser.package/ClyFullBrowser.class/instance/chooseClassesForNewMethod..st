accessing
chooseClassesForNewMethod: aMethod

	| methodClass selectedClasses |
	methodClass := aMethod origin.
	
	selectedClasses := self chooseClassesForNewMethod.
	selectedClasses := selectedClasses copyWithout: methodClass.
	^selectedClasses, {methodClass}