printing
printClassesOn: aStream
	aStream nextPutAll: ruleGroupName.
	classes ifNotEmpty: [ aStream nextPutAll: ': '].
	
	super printClassesOn: aStream.
	