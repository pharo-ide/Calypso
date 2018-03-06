testing
isVariableSelected
	| node binding |
	self isClassSelected ifTrue: [ ^false ].
	
	node := self selectedSourceNode.
	node isVariable ifFalse: [ ^false ].
	
	binding := node binding.
	
	^binding isClassVariable | binding isInstance | binding isGlobalVariable