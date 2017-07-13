controlling
expand
	self isExpanded ifTrue: [ ^self ].
	
	ownerDataSource expand: self