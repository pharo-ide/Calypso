building
fillWith: contexts
	contexts ifEmpty: [ ^self ].
	contexts size = 1 ifFalse: [ self error: 'Multiple contexts are not supported' ].

	self buildFromContext: contexts first.