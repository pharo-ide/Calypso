queries
findItemsWith: actualObjects
	"it returnes environment items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it.
	All returned items will be resilved"
	| result |
	self protectItemsWhile: [
		result := actualObjects collect: [ :eachObject |
			items 
				detect: [ :item | item representsObjectEqualTo: eachObject ] 
				ifNone: nil].
	
		result select: #notNil thenDo: [ :each | 
			each prepareIn: environment ].
		^result]