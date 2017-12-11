tools installing
decorateTool: aBrowserTool

	aBrowserTool supportsCriticDecoration ifFalse: [ ^self ].
		
	aBrowserTool addDecorator: ClyCriticDecorator new.