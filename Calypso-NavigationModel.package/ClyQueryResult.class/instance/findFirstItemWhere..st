queries
findFirstItemWhere: conditionBlock
	"It returns index of satisfying item or 0 if nothing was found"
	
	^self protectItemsWhile: [ items findFirst: conditionBlock ]