instance creation
variable: aSlot declaredIn: declarationClass classes: aClassScope 
	^(self classScope: aClassScope)
		variable: aSlot;
		declarationClass: declarationClass 