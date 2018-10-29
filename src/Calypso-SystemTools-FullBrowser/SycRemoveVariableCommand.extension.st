Extension { #name : #SycRemoveVariableCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemoveVariableCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 10000 for: ClyVariableContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemoveVariableCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation removalFor: ClyVariableContextOfFullBrowser
]
