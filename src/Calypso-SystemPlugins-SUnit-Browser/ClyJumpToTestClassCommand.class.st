"
Description
--------------------

I am a command available in the class context menu of Calypso. When activated I'll jump on the test class corresponding to the class. 

If the class does not exists I will create it in the corresponding package.
	
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	testClass:		<aClass>		Test class corresponding to the class I was activated with
"
Class {
	#name : #ClyJumpToTestClassCommand,
	#superclass : #SycSingleClassCommand,
	#traits : 'TClyGenerateTestClass',
	#classTraits : 'TClyGenerateTestClass classTrait',
	#instVars : [
		'testClass',
		'browser'
	],
	#category : #'Calypso-SystemPlugins-SUnit-Browser-Commands'
}

{ #category : #activation }
ClyJumpToTestClassCommand class >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^ CmdContextMenuActivation for: ClyClassContextOfFullBrowser
]

{ #category : #activation }
ClyJumpToTestClassCommand class >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^ CmdShortcutActivation by: $g meta, $j meta for: ClyClassContextOfFullBrowser
]

{ #category : #accessing }
ClyJumpToTestClassCommand >> defaultMenuItemName [
	^ 'Jump to test class'
]

{ #category : #execution }
ClyJumpToTestClassCommand >> execute [
	(self testClassFor: targetClass) ifNotNil: [ :class | browser showClass: class ]
]

{ #category : #execution }
ClyJumpToTestClassCommand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	browser := aToolContext
]
