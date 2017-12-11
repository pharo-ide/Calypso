instance creation
on: aVariableOrSlot definedIn: aClass
	^self new 
		actualVariable: aVariableOrSlot;
		definingClass: aClass