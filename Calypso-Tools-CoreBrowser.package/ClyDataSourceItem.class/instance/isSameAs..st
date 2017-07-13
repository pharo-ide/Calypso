testing
isSameAs: anotherItem
	^self environmentScope = anotherItem environmentScope and: [ 
		self environmentScope 
			checkBasisObject: self actualObject isSameAs: anotherItem actualObject]