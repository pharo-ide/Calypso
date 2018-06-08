testing
requiresNewDesiredSelection
	desiredSelection ifEmpty: [ ^false ].
	
	^(self selectedTools allSatisfy: [ :each | desiredSelection includes: each class]) not