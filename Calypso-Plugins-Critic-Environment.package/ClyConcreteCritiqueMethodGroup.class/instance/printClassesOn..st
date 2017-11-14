printing
printClassesOn: aStream
	aStream nextPutAll: ruleGroupName.
	classScope ifNotEmpty: [ aStream nextPutAll: ': '].
	
	super printClassesOn: aStream.
	