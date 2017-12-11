building
buildParentMap: aHierarchyMap for: aClass

	mergedParts do: [ :each | 
		aHierarchyMap hierarchy: each.
		each buildParentMap: aHierarchyMap for: aClass ].
	
	aHierarchyMap hierarchy: self.