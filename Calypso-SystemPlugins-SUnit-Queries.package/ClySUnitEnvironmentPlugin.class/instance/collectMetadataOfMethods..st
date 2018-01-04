query metadata
collectMetadataOfMethods: aQueryResult
	| property |
	property := 	ClyTestResultProperty new.
		
	aQueryResult rawItemsOf: ClyMethod do: [ :method | 
		(method isTestMethod and: [ method origin isAbstract not ]) ifTrue: [ 
			property accumulateTestMethod: method]].
	
	property allCount > 0 ifTrue: [ aQueryResult addMetaProperty: property ]