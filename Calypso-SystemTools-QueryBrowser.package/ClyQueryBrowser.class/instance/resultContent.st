accessing
resultContent
	^systemQuery 
		ifNil: [self class defaultResultContent]
		ifNotNil: [ systemQuery requiredResult  ]