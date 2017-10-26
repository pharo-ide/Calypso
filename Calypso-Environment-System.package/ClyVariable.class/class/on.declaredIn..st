instance creation
on: aVariableOrSlot declaredIn: aClass
	^self new 
		actualVariable: aVariableOrSlot;
		declaringClass: aClass