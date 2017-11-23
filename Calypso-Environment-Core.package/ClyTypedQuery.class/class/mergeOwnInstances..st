merging queries
mergeOwnInstances: queries
	| scopeGroups result mergedBasis mergedScope |
	scopeGroups := queries groupedBy: [ :each | each scope class ].
	
	result := OrderedCollection new.
	scopeGroups keysAndValuesDo: [ :scopeClass :groupedQueries | 
		mergedBasis := groupedQueries flatCollect: [:each | each scope basisObjects] as: IdentitySet.
		mergedScope := scopeClass of: mergedBasis in: groupedQueries first scope environment.
		result add: (self from: mergedScope as: groupedQueries first requiredResult)].
	
	^result