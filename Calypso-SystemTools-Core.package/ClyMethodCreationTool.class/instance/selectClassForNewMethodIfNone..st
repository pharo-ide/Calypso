operations
selectClassForNewMethodIfNone: aBlock
	| targetClasses selectedClass |
	targetClasses := browser chooseClassesForNewMethod.
	(targetClasses includes: methodClass) ifFalse: [ 
		targetClasses := {methodClass}, targetClasses ].
	
	selectedClass := targetClasses first.	
	targetClasses size > 1 ifTrue: [
		selectedClass := UIManager default 
			chooseFrom: targetClasses values: targetClasses 
			title: 'Choose class where you want install new method'].
	^selectedClass ifNil: aBlock