methods analysis
isMethodOverridden: aMethod
	
	self analysisCacheFor: aMethod do: [ :tags | ^tags last notNil].

	self analyzeMethod: aMethod.	
	^self isMethodOverridden: aMethod