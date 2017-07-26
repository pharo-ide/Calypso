accessing
resultContent
	^methodQuery 
		ifNil: [self class defaultResultContent]
		ifNotNil: [ methodQuery requestedContent  ]