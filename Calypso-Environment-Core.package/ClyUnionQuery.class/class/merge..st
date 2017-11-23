merging queries
merge: queries
	| result queryGroups |
	queries size = 1 ifTrue: [ ^{queries first} ].
	
	result := OrderedCollection new.
	queryGroups := queries groupedBy: [ :each | each class ].
	queryGroups keysAndValuesDo: [ :queryClass :groupedQueries | 
		result addAll: (queryClass mergeOwnInstances: groupedQueries)].
	
	^result