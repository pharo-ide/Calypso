instance creation
on: aVariableOrSlot visibleFrom: aClass
	^self new 
		actualVariable: aVariableOrSlot;
		detectDefiningClassFrom: aClass