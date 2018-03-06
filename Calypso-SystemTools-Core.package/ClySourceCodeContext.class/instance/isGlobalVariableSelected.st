testing
isGlobalVariableSelected
	| node binding |
	node := self selectedSourceNode.
	node isVariable ifFalse: [ ^false ].
	
	binding := node binding.
	
	^binding isGlobalVariable