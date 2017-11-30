building
buildMap: aHierarchyMapClass from: classes 
	
	| map |
	map := aHierarchyMapClass for: self of: classes.
	map build.
	^map