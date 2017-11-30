converting
inverted

	| inverted |
	inverted := self class inverseMapClass sortedBy: childrenSortFunction.
	self parentAndChildDo: [ :parent :child | 
		inverted addParent: parent to: child ].
	^inverted