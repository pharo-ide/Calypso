query metadata
collectMetadataOfMethods: aQueryResult
	| property |
	property := 	ClyTestResultProperty new.
		
	aQueryResult rawItemsOf: ClyMethod do: [ :method | 
		method isTestMethod ifTrue: [ 
			property accumulateTestMethod: method]].
	
	property allCount > 0 ifTrue: [ aQueryResult addMetaProperty: property ]