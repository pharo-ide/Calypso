baselines
initializeDecorators

	| decoratorClass |
	(self class environment hasClassNamed: #ClyTableDecorator) ifFalse: [ ^self ].
	decoratorClass := self class environment classNamed: #ClyTableDecorator.
	decoratorClass resetDecorators.