updating
restoreBrowserState: aBrowserState
	| existingTools |
	"Browser state do only hold selected tabs. 
	So first we should restore all tools in new context and then restore selection"
	self updateTools.
	
	existingTools := aBrowserState selectedTabs 
		collect: [ :oldTool | tools detect: [ :each | each isSimilarTo: oldTool ] ifNone: [ nil ]]
		thenSelect: #notNil.
		
	existingTools ifEmpty: [ ^self].
	existingTools first selectAsMainTab.
	existingTools allButFirstDo: [ :each | each selectAsExtraTab ]