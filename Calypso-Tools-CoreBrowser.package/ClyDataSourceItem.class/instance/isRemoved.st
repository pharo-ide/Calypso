testing
isRemoved
	^environmentItem isNil 
		or: [ ownerDataSource isParentRemoved 
				or: [ ownerDataSource isParentCollapsed] ]