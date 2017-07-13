updating
updateToolsInContextOf: aSelection changedBy: anEnvironmentChanged
	| context |
	context := self createContextOf: aSelection.	
	tabManager updateToolsInContext: context.