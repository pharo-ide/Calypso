accessing
localHierarchySize

	| property |
	property := self getProperty: ClyLocalHierarchyProperty ifAbsent: [ ^0].
	
	^property subtreeSize