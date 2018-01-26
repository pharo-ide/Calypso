instance creation
childrenType: itemTypeClass
	^self types at: itemTypeClass ifAbsentPut: [ 
		self new childrenType: itemTypeClass]