queries
itemsWhere: aBlockClosure 
	| found item |
	actualResult protectItemsWhile: [
		found := OrderedCollection new.
		actualResult items doWithIndex: [ :each :i | 
			item := each asCalypsoBrowserItem.
			(aBlockClosure value: item)	ifTrue: [ 
				item position: i.
				item prepareIn: self environment.	
				found add: item ] ].
		^found]