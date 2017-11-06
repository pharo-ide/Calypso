accessing
requiredQueryResult
	^systemQuery 
		ifNil: [self class defaultQueryResult]
		ifNotNil: [ systemQuery requiredResult  ]