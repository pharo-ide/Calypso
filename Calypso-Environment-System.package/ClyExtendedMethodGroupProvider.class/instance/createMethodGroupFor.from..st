building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	| subgroupsQuery |
	subgroupsQuery := ClyExtendingPackages 
		from: aClassScope as: ClyGroupedExtendingPackages new.
		
	^ClyMethodGroup 
		named: 'extensions' priority: 9
		on: aMethodQuery withSubgroupsFrom: subgroupsQuery