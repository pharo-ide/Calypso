context menu
contextMenuOn: aBuilder
	<RubSmalltalkCodeMenu>

	| context |
	context := aBuilder model browserTool createCommandContext.
	CmdContextMenuCommandActivation registerMenuOn: aBuilder inContext: context