private
instanceVariablesOf: declaringClass do: aBlock

	declaringClass slots do: [:var | 
		aBlock value: (ClyInstanceVariable on: var declaredIn: declaringClass)]
