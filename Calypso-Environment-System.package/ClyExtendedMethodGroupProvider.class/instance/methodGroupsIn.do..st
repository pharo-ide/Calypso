building groups
methodGroupsIn: aClassScope do: aBlock

	aClassScope methodsDo: [ :method | 
		method isExtension ifTrue: [
			aBlock value: (ClyExtendedMethodGroup fromClasses: aClassScope).
			^self] ]