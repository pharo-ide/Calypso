building groups
classGroupsDo: aBlock

	package extendedClassNames ifEmpty: [ ^self ].
	
	aBlock value: (ClyExtendedClassGroup in: package)