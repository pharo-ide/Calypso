building
fillWith: objects
	"System objects supposed to have definition class and package.
	It can be classes, methods, variables, class comments and so on"
	| itemsPerClass localItems classMap |
	itemsPerClass := self buildItemsPerClassFrom: objects.
	classMap := ClySubclassHierarchy buildFrom: itemsPerClass keys.
	
	items := OrderedCollection new: objects size.
	classMap doInOrderWithDepth: [ :eachClass :depth |
		localItems := itemsPerClass at: eachClass.
		localItems do: [:each | each depth: depth].
		items addAll: localItems].