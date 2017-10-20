building groups
methodGroupsIn: aClassScope do: aBlock

	aClassScope methodsDo: [ :method | 
		method isExtension ifTrue: [
			aBlock value: (ClyExtendedMethodGroup classes: aClassScope collectAllClasses).
			^self] ]