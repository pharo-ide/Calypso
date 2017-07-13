building
addItemFor: aClass depth: hierarchyDepth

	| group item |
	group := ClySuperclassMethodGroup classes: rootClasses superclass: aClass.
	item := group asEnvironmentItem.
	item depth: hierarchyDepth.
	items add: item
	