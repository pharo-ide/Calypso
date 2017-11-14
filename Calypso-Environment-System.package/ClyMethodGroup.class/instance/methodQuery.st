accessing
methodQuery
	^methodQuery ifNil: [ self createMethodQuery. methodQuery ]