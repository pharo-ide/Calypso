breakpoints
conditionStringToConditionBlock: aString
	| conditionBlockProducerMethodAST |
	conditionBlockProducerMethodAST := self conditionBlockProducerMethodAST: aString.

	^ ((conditionBlockProducerMethodAST generateWithSource) valueWithReceiver: nil arguments: {}).