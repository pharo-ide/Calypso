private
classVariablesOf: declaringClass do: aBlock

	declaringClass classVariables associationsDo: [:var | 
		aBlock value: (ClyClassVariable on: var declaredIn: declaringClass)]