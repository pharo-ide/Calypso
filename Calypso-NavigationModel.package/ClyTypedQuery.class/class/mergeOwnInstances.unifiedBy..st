merging queries
mergeOwnInstances: queries unifiedBy: ownUnifiedInstance
	| scopeGroups result mergedBasis mergedScope |
	scopeGroups := queries groupedBy: [ :each | each scope asUnifiedInstance ].
	
	result := OrderedCollection new.
	scopeGroups keysAndValuesDo: [ :unifiedScope :groupedQueries | 
		mergedBasis := groupedQueries 
			flatCollect: [:each | each scope basisObjects] 
			as: OrderedCollection. "Merging duplications will be performed by scope itself"
		mergedScope := unifiedScope withNewBasisObjects: mergedBasis.
		result add: (ownUnifiedInstance withScope: mergedScope)].
		
	^result