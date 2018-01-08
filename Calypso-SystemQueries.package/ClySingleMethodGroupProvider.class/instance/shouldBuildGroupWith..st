testing
shouldBuildGroupWith: aMethodQuery
	
	self isStatic ifFalse: [ ^true ].
	^aMethodQuery hasEmptyResult not