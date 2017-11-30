private
parentsOf: aClass which: conditionBlock

	| resultParents allParents eachParent |
	resultParents := Set new: aClass traits size.
	allParents := Set withAll: aClass traits.  

	[allParents isEmpty] whileFalse: [
		eachParent := allParents anyOne.
		allParents remove: eachParent.
		(conditionBlock value: eachParent) 
			ifTrue: [resultParents add: eachParent]
			ifFalse: [ allParents addAll: eachParent traits].
	].
		
	^resultParents