accessing
addParent: parentClass to: childClass
 
	| children |
	children := parentMap at: parentClass ifAbsentPut: [	self containerForChildren].
	children add: childClass