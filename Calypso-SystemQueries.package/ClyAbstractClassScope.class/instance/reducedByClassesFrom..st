converting
reducedByClassesFrom: aClassScope

	| myClasses classesToExclude |
	myClasses := basisObjects collect: [:each | each instanceSide].
	classesToExclude := aClassScope collectAllClasses collect: [:each | each instanceSide].

	^self withNewBasisObjects: (myClasses copyWithoutAll: classesToExclude)