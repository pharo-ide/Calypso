accessing
addClass: aClass
	(classes includes: aClass) ifTrue: [ ^self ].
	
	classes add: aClass