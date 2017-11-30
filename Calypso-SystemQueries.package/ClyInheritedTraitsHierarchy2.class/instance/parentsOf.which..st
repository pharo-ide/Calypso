private
parentsOf: aClass which: conditionBlock

	| resultParents allParents eachParent |
	resultParents := Set new: aClass users size.
	allParents := Set withAll: aClass users.  

	[allParents isEmpty] whileFalse: [
		eachParent := allParents anyOne.
		allParents remove: eachParent.
		(conditionBlock value: eachParent) 
			ifTrue: [resultParents add: eachParent]
			ifFalse: [ allParents addAll: eachParent users].
	].
		
	^resultParents