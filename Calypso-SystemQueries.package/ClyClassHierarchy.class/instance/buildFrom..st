building
buildFrom: classes
	| map |
	map := ClyClassHierarchyMap for: self of: classes.
	map build.
	^map