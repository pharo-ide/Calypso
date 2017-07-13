building groups
buildGroupItemsOn: items

	package extendedClassNames ifEmpty: [ ^self ].
	
	items add: (ClyExtendedClassGroup in: package) asEnvironmentItem 