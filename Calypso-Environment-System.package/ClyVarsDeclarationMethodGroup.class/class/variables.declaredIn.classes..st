instance creation
variables: vars declaredIn: declarationClass classes: methodClasses
	^(self classes: methodClasses variables: vars)
		declarationClass: declarationClass 