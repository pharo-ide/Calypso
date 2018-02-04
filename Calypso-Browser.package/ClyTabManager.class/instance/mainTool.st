accessing
mainTool

	| desiredTools |
	desiredTools := self selectedTools select: [ :each | desiredSelection includes: each class].
	desiredTools ifEmpty: [ desiredTools := tools ].

	^desiredTools detectMax: [ :each | 
		self activationPriorityOf: each]
		