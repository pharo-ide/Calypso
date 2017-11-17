controlling
showInheritedMethods: aBoolean

	self isMethodsVisible == aBoolean ifTrue: [ ^self ].
	
	browser switchMethodScopeTo: visibilityLevel toggleScope