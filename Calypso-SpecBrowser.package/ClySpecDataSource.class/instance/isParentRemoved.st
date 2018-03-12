testing
isParentRemoved
	parentItem ifNil: [ ^false ].
	^parentItem isRemoved