context menu
contextMenuOn: aBuilder
	<RubSmalltalkCodeMenu>

	| context |
	(aBuilder model editingMode isKindOf: ClyTextEditingMode)
		ifFalse: [ ^self ].
		
	context := aBuilder model browserTool createCommandContext.
	CmdContextMenuCommandActivation registerContextMenuOn: aBuilder inContext: context