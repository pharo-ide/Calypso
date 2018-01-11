queries
findItemsWith: actualObjects
	"it returnes environment items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it.
	All returned items will be resilved"
	| result |
	^actualResult protectItemsWhile: [
		result := actualObjects collect: [ :eachObject |
			actualResult items
				detect: [ :item | item representsObjectEqualTo: eachObject ] 
				ifNone: nil].
		self prepareItems: result]