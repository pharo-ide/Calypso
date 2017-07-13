instance creation
slot: aSlot declaredIn: aClass
	^self new 
		slot: aSlot;
		declaringClass: aClass