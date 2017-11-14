instance creation
variable: aSlot declaredIn: declarationClass classes: classes 
	^(self classScope: classes)
		variable: aSlot;
		declarationClass: declarationClass 