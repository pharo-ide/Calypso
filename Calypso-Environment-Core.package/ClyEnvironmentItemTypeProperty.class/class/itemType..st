instance creation
itemType: aClass
	^self types at: aClass ifAbsentPut: [ 
		self new itemType: aClass]