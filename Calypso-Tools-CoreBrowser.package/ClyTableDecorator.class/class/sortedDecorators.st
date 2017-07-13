accessing
sortedDecorators
	^SortedDecorators ifNil: [ 
		SortedDecorators := SortedCollection sortBlock: [ :a :b | a priority <= b priority].
		self allSubclassesDo: [ :each | SortedDecorators add: each ].
		SortedDecorators ]