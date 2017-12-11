controlling
showInheritedMethods: aBoolean

	| newScope |
	self isMethodsVisible == aBoolean ifTrue: [ ^self ].
	
	newScope := visibilityLevel toggleScope.
	newScope isBasedOnEmptyBasis ifFalse: [ 
		browser restrictMethodVisibilityBy: newScope]