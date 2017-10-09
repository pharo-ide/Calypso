updating
updateToolsInContextOf: aSelection changedBy: anEnvironmentChanged
	"It will be removed. Tools should implement own subscribtion/updating logic"
	| context |
	context := ClyContextSelectionStrategy selectContextOf: aSelection for: self.	
	tabManager updateToolsInContext: context.