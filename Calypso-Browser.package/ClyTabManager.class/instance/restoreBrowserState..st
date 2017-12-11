updating
restoreBrowserState: aBrowserNavigationState
	| existingTools |

		existingTools := aBrowserNavigationState selectedTabs 
			collect: [ :oldTool | tools detect: [ :each | each isSimilarTo: oldTool ] ifNone: [ nil ]]
			thenSelect: #notNil.
		
		existingTools ifEmpty: [ ^self].
		existingTools first selectAsMainTab.
		existingTools allButFirstDo: [ :each | each selectAsExtraTab ].
	