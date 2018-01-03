testing
includesClass: aClass
	
	self classesDo: [ :each | each = aClass ifTrue: [^true]].
	^false