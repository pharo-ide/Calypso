testing
isParentExpanded
	parentItem ifNil: [ ^true ].
	^parentItem isExpanded