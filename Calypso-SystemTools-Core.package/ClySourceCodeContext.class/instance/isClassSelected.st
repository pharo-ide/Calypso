testing
isClassSelected

	| node |
	node := self selectedSourceNode.
	node isVariable ifFalse: [ ^false ].
	
	^node binding isLiteralVariable 
		and: [ node binding isGlobalClassNameBinding ]