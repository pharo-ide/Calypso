Class {
	#name : #ClyOpenProcessDebuggerComand,
	#superclass : #ClyDebugProcessComand,
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #activation }
ClyOpenProcessDebuggerComand class >> processBrowserContextMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyProcessContextOfProcessBrowser
]

{ #category : #activation }
ClyOpenProcessDebuggerComand class >> processBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $d meta for: ClyProcessContextOfProcessBrowser
]

{ #category : #activation }
ClyOpenProcessDebuggerComand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byRootGroupItemFor: ClyProcessContextOfProcessBrowser
]

{ #category : #accessing }
ClyOpenProcessDebuggerComand >> defaultMenuIconName [
	^#repair
]

{ #category : #accessing }
ClyOpenProcessDebuggerComand >> defaultMenuItemName [
	^'Debug'
]

{ #category : #execution }
ClyOpenProcessDebuggerComand >> execute [

	ClyDebugger openOn: process from: environment
]
