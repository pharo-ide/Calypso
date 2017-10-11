selecting text
findAnyString: strings in: text

	| index |
	strings do: [ :each | 
		index := text findString: each startingAt: 1.
		index > 0 ifTrue: [^index to: index + each size]].
	
	^0 to: -1