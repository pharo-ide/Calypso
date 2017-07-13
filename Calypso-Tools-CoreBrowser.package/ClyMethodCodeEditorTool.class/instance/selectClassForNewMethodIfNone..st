operations
selectClassForNewMethodIfNone: aBlock
	| methodClass targetClasses |
	targetClasses := browser selectClassesForNewMethod: self editingMethod.
	
	methodClass := targetClasses first.
	targetClasses size > 1 ifTrue: [
		methodClass := UIManager default 
			chooseFrom: targetClasses values: targetClasses 
			title: 'Choose class where you want install new method'].
	
	^methodClass ifNil: aBlock