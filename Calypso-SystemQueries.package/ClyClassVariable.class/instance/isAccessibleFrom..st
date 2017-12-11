testing
isAccessibleFrom: aClass

	^aClass instanceSide = definingClass or: [ aClass instanceSide inheritsFrom: definingClass ]