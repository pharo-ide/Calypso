Class {
	#name : #ClyMethodContextEditorToolMorph,
	#superclass : #ClyMethodCodeEditorToolMorph,
	#instVars : [
		'methodContext'
	],
	#category : 'Calypso-SystemTools-Debugger'
}

{ #category : #activation }
ClyMethodContextEditorToolMorph class >> browserTabActivation [
	<classAnnotation>
	
	^ClyTabActivationStrategy for: Context asCalypsoItemContext
]

{ #category : #testing }
ClyMethodContextEditorToolMorph class >> shouldBeActivatedInContext: aBrowserContext [
	^aBrowserContext hasSelectedItems
]

{ #category : #testing }
ClyMethodContextEditorToolMorph >> belongsToCurrentBrowserContext [
	^browser isProcessContextSelected: methodContext
]

{ #category : #testing }
ClyMethodContextEditorToolMorph >> belongsToRemovedBrowserContext [
	super belongsToRemovedBrowserContext ifTrue: [ ^true ].
	self flag: #todo.
	^methodContext sender isNil "it should be improved by analyzing editing process contexts"
]

{ #category : #building }
ClyMethodContextEditorToolMorph >> doItReceiver [
	^methodContext receiver
]

{ #category : #initialization }
ClyMethodContextEditorToolMorph >> setUpModelFromContext [
	super setUpModelFromContext.

	methodContext := context lastSelectedContext
]
