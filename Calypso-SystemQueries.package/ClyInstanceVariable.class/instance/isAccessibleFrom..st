testing
isAccessibleFrom: aClass

	^aClass = definingClass or: [ aClass inheritsFrom: definingClass ]