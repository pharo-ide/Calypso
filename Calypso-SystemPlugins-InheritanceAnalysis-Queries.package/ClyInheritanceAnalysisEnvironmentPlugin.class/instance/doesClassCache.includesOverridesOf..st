methods analysis
doesClassCache: classCache includesOverridesOf: aClass

	classCache keysDo: [ :eachClass | 
		((eachClass includesBehavior: aClass) or: [ aClass includesBehavior: eachClass ])
			ifTrue: [ ^true ]].
		
	^false