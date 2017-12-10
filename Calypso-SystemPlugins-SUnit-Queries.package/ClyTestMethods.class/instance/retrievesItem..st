testing
retrievesItem: aMethod
	^(super retrievesItem: aMethod)
		and: [ self selectsMethod: aMethod ]