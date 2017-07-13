execution
selectMethodsInClasses: classes

	^classes flatCollect: [ :eachClass | 
		(self selectMethodsInClass: eachClass instanceSide)
			, (self selectMethodsInClass: eachClass classSide)
	] as: OrderedCollection 