instance creation
variables: vars declaredIn: declarationClass classes: aClassScope
	^(self classes: aClassScope variables: vars)
		declarationClass: declarationClass 