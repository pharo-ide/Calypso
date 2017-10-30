enumerating
metaLevelsOf: aClass do: aBlock
	aBlock value: (self resolveClass: aClass)