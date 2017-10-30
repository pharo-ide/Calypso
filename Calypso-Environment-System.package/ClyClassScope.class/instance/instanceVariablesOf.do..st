private
instanceVariablesOf: declaringClass do: aBlock

	self metaLevelsOf: declaringClass do: [ :concreteMetaLevelClass |
		concreteMetaLevelClass slots do: [:var | 
			aBlock value: (ClyInstanceVariable on: var declaredIn: declaringClass) ]]