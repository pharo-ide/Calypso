testing
selectsMethod: aMethod
	(super selectsMethod: aMethod) ifTrue: [ ^true ].
	
	^variables anySatisfy: [ :each | aMethod hasSelector: each key]