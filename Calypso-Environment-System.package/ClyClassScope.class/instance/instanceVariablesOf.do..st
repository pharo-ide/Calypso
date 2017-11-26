private
instanceVariablesOf: definingClass do: aBlock

	self metaLevelsOf: definingClass do: [ :concreteMetaLevelClass |
		concreteMetaLevelClass slots do: [:var | 
			aBlock value: (ClyInstanceVariable on: var definedIn: definingClass) ]]