testing
wantsDecorateTableCellInContext: singleItemContext
	(super wantsDecorateTableCellInContext: singleItemContext) ifFalse: [^false].

	^singleItemContext selectedClassItems anySatisfy: [ :each | 
		each isMarkedWith: ClyTraitUserTag ]