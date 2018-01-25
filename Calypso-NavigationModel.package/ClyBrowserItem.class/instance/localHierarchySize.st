accessing
localHierarchySize

	| property |
	property := self getProperty: ClyItemLocalHierarchyProperty ifAbsent: [ ^0].
	
	^property subtreeSize