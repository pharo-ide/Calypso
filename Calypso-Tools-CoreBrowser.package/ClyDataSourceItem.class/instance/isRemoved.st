testing
isRemoved
	^browserItem isNil 
		or: [ ownerDataSource isParentRemoved 
				or: [ ownerDataSource isParentCollapsed] ]