instance creation
itemScope: aClass
	^self scopes at: aClass ifAbsentPut: [ 
		self new itemScope: aClass]