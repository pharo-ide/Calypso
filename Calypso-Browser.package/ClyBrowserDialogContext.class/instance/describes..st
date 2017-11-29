testing
describes: aBrowserDialog

	^(aBrowserDialog isKindOf: dialogClass)
		and: [ aBrowserDialog browser isKindOf: browserClass]