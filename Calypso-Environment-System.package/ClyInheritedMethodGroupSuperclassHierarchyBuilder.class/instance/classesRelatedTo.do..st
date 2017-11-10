building
classesRelatedTo: aClass do: childBlock
	aClass isRootInEnvironment ifTrue: [ ^self].
	
	childBlock value: aClass superclass