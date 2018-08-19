accessing
withTool: aToolClass do: aBlock
	| tool |
	tool := tools detect: [:each | each isKindOf: aToolClass ].
	^tool whenReadyDo: aBlock