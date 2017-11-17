building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	| subgroupsQuery |
	subgroupsQuery := ClyExtendingPackages 
		from: aClassScope 
		as: ClyGroupedExtendingPackages new.		
	^ClyExtendedMethodGroup named: 'extensions' on: aMethodQuery withSubgroupsFrom: subgroupsQuery