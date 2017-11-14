accessing
subgroups
	^{ClyVariableReadMethodGroup. ClyVariableWriteMethodGroup} collect: [ :each | 
		each variable: variable declaredIn: declarationClass classes: classScope]