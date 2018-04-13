testing
isAccessibleFrom: aClass
	(aClass instanceSide includesSharedPoolNamed: definingClass name) ifTrue: [ ^true ].
		
	^aClass instanceSide = definingClass or: [ aClass instanceSide inheritsFrom: definingClass ]