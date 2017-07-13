testing
isAccessibleFrom: aClass

	^aClass == declaringClass or: [ aClass inheritsFrom: declaringClass ]