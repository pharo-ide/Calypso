testing
isSelectedMethodGroupManagedByUser
	| groupClass |
	self isMethodGroupSelected ifFalse: [ ^false ].
	
	groupClass := self lastSelectedItem environmentItem type .
	^groupClass isManagedByUser 