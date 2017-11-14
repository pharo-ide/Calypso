accessing
methodQuery
	^methodQuery ifNil: [ methodQuery := self createMethodQuery ]