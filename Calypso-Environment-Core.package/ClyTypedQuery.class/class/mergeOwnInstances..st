merging queries
mergeOwnInstances: queries

	| queryGroups merged |
	queryGroups := queries groupedBy: [ :each | each asUnifiedInstance ].
	
	merged := OrderedCollection new.
	queryGroups keysAndValuesDo: [ :unifiedQuery :groupedQueries |
		merged addAll: (self mergeOwnInstances: groupedQueries unifiedBy: unifiedQuery)].
	
	^merged