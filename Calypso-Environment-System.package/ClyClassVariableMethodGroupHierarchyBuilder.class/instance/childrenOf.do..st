building
childrenOf: aClass do: childBlock
	aClass instanceSide isRootInEnvironment ifTrue: [ ^self].
	
	childBlock value: aClass instanceSide superclass