private
createElementWith: anEnvironmentItem

	^self 
		findCachedElementWith: anEnvironmentItem 
		ifAbsent: [ ClyDataSourceItem of: self value: anEnvironmentItem]