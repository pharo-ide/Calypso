instance creation
classes: classes variable: aVariable
	^(self classScope: classes)
		variable: aVariable;
		declarationClass: aVariable declaringClass