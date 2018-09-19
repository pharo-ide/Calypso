"
I am a command to move methods to the method group.
By default I am activated by dragging selected method into the method tag (protocol).
 
Internal Representation and Key Implementation Points.

    Instance Variables
	methodGroup:		<ClyMethodGroup>
"
Class {
	#name : #ClyMoveMethodsToGroupCommand,
	#superclass : #SycMethodCommand,
	#instVars : [
		'methodGroup'
	],
	#category : #'Calypso-SystemTools-FullBrowser-Commands-Methods'
}

{ #category : #activation }
ClyMoveMethodsToGroupCommand class >> fullBrowserDragAndDropActivation [
	<classAnnotation>
	
	^CmdDragAndDropActivation 
		for: ClyMethod asCalypsoItemContext 
		toDropIn: ClyTaggedMethodGroup asCalypsoItemContext
]

{ #category : #activation }
ClyMoveMethodsToGroupCommand class >> fullBrowserDragAndDropActivation2 [
	<classAnnotation>
	
	^CmdDragAndDropActivation 
		for: ClyMethod asCalypsoItemContext 
		toDropIn: ClyAllMethodGroup asCalypsoItemContext
]

{ #category : #activation }
ClyMoveMethodsToGroupCommand class >> fullBrowserDragAndDropActivation3 [
	<classAnnotation>
	
	^CmdDragAndDropActivation 
		for: ClyMethod asCalypsoItemContext 
		toDropIn: ClyExternalPackageMethodGroup asCalypsoItemContext
]

{ #category : #accessing }
ClyMoveMethodsToGroupCommand >> defaultMenuItemName [
	^'Move to method group'
]

{ #category : #execution }
ClyMoveMethodsToGroupCommand >> execute [
	
	methodGroup importMethods: methods
]

{ #category : #'drag and drop support' }
ClyMoveMethodsToGroupCommand >> prepareExecutionInDropContext: aToolContext [
	super prepareExecutionInDropContext: aToolContext.
	methodGroup := aToolContext lastSelectedMethodGroup
]
