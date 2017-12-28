queries
itemsWhere: conditionBlock 
	| found item |
	actualResult protectItemsWhile: [
		found := OrderedCollection new.
		actualResult items doWithIndex: [ :each :i | 
			item := each asCalypsoBrowserItem.
			(conditionBlock value: item)	ifTrue: [ 
				item position: i.
				item prepareIn: self environment.	
				found add: item ] ].
		^found]