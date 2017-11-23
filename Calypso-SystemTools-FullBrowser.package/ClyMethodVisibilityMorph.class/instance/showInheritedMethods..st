controlling
showInheritedMethods: aBoolean

	self isMethodsVisible == aBoolean ifTrue: [ ^self ].
	
	browser restrictMethodVisibilityBy: visibilityLevel toggleScope