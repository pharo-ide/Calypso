building
buildGroupFor: aClass depth: depth toShowMethodsFrom: aScope

	| group item |
	group := ClyInheritedMethodGroup withMethodsOf: aClass toShowIn: aScope.
	item := group asCalypsoBrowserItem.
	item depth: depth.
	items add: item