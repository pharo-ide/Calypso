building
buildFromMethods: methods
	
	| classMethodItems classItems methodItems |
	classMethodItems := self buildMethodItemsPerClassFrom: methods.
	classItems := self buildHierarchicalClassItemsFrom: classMethodItems.
	
	items := OrderedCollection new: methods size.
	classItems do: [ :classItem |
		methodItems := classMethodItems at: classItem actualObject.
		methodItems do: [:each | each depth: classItem depth].
		items addAll: methodItems].