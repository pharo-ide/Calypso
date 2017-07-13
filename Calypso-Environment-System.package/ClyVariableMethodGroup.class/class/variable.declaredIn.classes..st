instance creation
variable: aSlot declaredIn: declarationClass classes: classes 
	^(self classes: classes)
		variable: aSlot;
		declarationClass: declarationClass 