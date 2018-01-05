methods analysis
isMethodOverriding: aMethod
	
	self analysisCacheFor: aMethod do: [ :tags | ^tags first notNil].
	
	self analyzeMethod: aMethod.	
	^self isMethodOverriding: aMethod