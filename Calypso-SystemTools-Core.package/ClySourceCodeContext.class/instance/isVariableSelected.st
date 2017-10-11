testing
isVariableSelected
	| node binding |
	node := self selectedSourceNode.
	node isVariable ifFalse: [ ^false ].
	
	binding := node binding.
	
	^binding isClassVariable | binding isInstance 