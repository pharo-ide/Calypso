queries
findItemsWith: actualObjects
	"it returnes environment items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent in content then it will return nil in place of it.
	All returned items will be resilved"
	| result |
	self rebuildIfNeeded.
	result := actualObjects collect: [ :eachObject |
		items 
			detect: [ :item | self itemScope checkBasisObject: item actualObject isEqualTo: eachObject ] 
			ifNone: nil].
	
	result select: #notNil thenDo: [ :each | 
		environment resolveItem: each of: self ].
	^result