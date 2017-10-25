building
fillWith: objects
	"System objects supposed to have definition class and package.
	It can be classes, methods, variables, class comments and so on"
	| itemsPerClass localItems classItems |
	itemsPerClass := self buildItemsPerClassFrom: objects.
	classItems := self buildHierarchicalClassItemsFrom: itemsPerClass.
	
	items := OrderedCollection new: objects size.
	classItems do: [ :classItem |
		localItems := itemsPerClass at: classItem actualObject.
		localItems do: [:each | each depth: classItem depth].
		items addAll: localItems].