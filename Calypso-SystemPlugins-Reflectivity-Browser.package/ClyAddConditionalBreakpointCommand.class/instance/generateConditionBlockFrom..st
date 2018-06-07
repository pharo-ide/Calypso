block generation
generateConditionBlockFrom: aString
	| conditionBlockProducerMethodAST |
	conditionBlockProducerMethodAST := self conditionBlockProducerMethodAST: aString.

	^ ((conditionBlockProducerMethodAST generateWithSource) valueWithReceiver: nil arguments: {}).