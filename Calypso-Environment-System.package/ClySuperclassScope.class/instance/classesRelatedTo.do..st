accessing
classesRelatedTo: aClass do: aBlock
	aClass isRootInEnvironment ifTrue: [ ^self ].
	aBlock value: aClass superclass