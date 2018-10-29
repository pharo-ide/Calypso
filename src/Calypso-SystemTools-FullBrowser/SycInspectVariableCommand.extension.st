Extension { #name : #SycInspectVariableCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycInspectVariableCommand classSide >> fullBrowserDoubleClickActivation [
	<classAnnotation>
	
	^(CmdDoubleClickActivation for: ClyVariableContextOfFullBrowser)
		priority: 10000
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycInspectVariableCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: ClyQueryMenuGroup for: ClyVariableContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycInspectVariableCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^(CmdShortcutActivation 
		by: PharoShortcuts current inspectItShortcut for: ClyVariableContextOfFullBrowser)
			priority: 100000
]
