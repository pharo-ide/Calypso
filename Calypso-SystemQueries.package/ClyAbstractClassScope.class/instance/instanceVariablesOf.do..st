private
instanceVariablesOf: definingClass do: aBlock

	| slots |
	self metaLevelsOf: definingClass do: [ :concreteMetaLevelClass |
		"Ugly way to support Pharo7 slots from traits"
		slots := (concreteMetaLevelClass respondsTo: #localSlots) 
			ifTrue: [ concreteMetaLevelClass localSlots]
			ifFalse: [ concreteMetaLevelClass slots ].
		slots do: [:var | 
			aBlock value: (ClyInstanceVariable on: var definedIn: definingClass) ]]