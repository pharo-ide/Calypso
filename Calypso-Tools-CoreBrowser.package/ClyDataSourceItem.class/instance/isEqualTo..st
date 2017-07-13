testing
isEqualTo: anotherItem
	^self environmentScope = anotherItem environmentScope and: [ 
		self environmentScope 
			checkBasisObject: self actualObject isEqualTo: anotherItem actualObject]