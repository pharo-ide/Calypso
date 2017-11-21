testing
selectsMethod: aMethod
	(super selectsMethod: aMethod) ifTrue: [ ^true ].
	
	^variableQuery anySatisfy: [ :each | aMethod hasSelector: each key]