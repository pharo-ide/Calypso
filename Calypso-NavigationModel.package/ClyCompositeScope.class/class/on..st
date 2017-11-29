instance creation
on: subscopes
	subscopes size = 1 ifTrue: [ ^subscopes anyOne ].
	
	^self new 
		subscopes: subscopes