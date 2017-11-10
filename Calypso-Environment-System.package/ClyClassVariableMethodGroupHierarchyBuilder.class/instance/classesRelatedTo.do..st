building
classesRelatedTo: aClass do: childBlock
	aClass instanceSide isRootInEnvironment ifTrue: [ ^self].
	
	childBlock value: aClass instanceSide superclass