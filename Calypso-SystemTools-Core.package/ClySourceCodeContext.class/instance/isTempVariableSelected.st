testing
isTempVariableSelected
	| node |
	node := self selectedSourceNode.
	^node isVariable and: [ node isTemp]