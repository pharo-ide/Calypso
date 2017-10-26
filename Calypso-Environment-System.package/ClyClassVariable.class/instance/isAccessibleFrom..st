testing
isAccessibleFrom: aClass

	^aClass instanceSide = declaringClass or: [ aClass instanceSide inheritsFrom: declaringClass ]