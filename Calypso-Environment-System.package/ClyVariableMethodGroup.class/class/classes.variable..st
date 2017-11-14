instance creation
classes: aClassScope variable: aVariable
	^(self fromClasses: aClassScope)
		variable: aVariable;
		declarationClass: aVariable declaringClass