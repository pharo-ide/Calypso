private
addActualParent: parentClass to: childClass
 
	| children |
	children := parentMap at: parentClass ifAbsentPut: [	self containerForChildren].
	children add: childClass.
	roots remove: childClass ifAbsent: nil