selection-method groups
isSelectedMethodGroupEditable
	
	self isMethodGroupSelected ifFalse: [ ^false ].
	
	^self selectedMethodGroupClass isEditableGroup 