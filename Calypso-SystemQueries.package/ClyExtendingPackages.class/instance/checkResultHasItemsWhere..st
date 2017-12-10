execution
checkResultHasItemsWhere: itemConditionBlock
	
	| classPackage |
	scope methodsDo: [ :eachMethod | 
		classPackage := eachMethod origin package.
		(eachMethod isDefinedInPackage: classPackage) ifFalse: [ 
			(eachMethod package notNil and: [ itemConditionBlock value: eachMethod ])
				ifTrue: [ ^true]]].
		
	^false