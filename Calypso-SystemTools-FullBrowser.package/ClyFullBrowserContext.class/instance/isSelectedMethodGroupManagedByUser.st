selection-method groups
isSelectedMethodGroupManagedByUser
	
	self isMethodGroupSelected ifFalse: [ ^false ].
	
	^self selectedMethodGroupClass isManagedByUser 