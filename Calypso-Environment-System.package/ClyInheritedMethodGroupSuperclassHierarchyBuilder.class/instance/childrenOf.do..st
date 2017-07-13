building
childrenOf: aClass do: childBlock
	aClass isRootInEnvironment ifTrue: [ ^self].
	
	childBlock value: aClass superclass