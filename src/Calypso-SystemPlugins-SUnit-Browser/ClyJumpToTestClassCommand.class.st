Class {
	#name : #ClyJumpToTestClassCommand,
	#superclass : #SycSingleClassCommand,
	#instVars : [
		'testClass'
	],
	#category : #'Calypso-SystemPlugins-SUnit-Browser'
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

{ #category : #execution }
ClyJumpToTestClassCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	aToolContext showClass: testClass
]

{ #category : #accessing }
ClyJumpToTestClassCommand >> defaultMenuItemName [
	^ 'Jump to test class'
]

{ #category : #execution }
ClyJumpToTestClassCommand >> execute [
	| className |
	targetClass isTestCase ifTrue: [ ^ self ].
	targetClass isMeta ifTrue: [ ^ self ].
	className := (targetClass name , 'Test') asSymbol.
	self class environment
		at: className
		ifPresent: [ :class | testClass := class ]
		ifAbsent: [
			RPackageOrganizer default ensureExistAndRegisterPackageNamed: targetClass package name asString , '-Tests'.
			testClass := TestCase
				subclass: className
				instanceVariableNames: ''
				classVariableNames: ''
				package: self newTestClassCategory.
			testClass comment: self newCommentForTestClass ]
]

{ #category : #execution }
ClyJumpToTestClassCommand >> newCommentForTestClass [
	^ String
		streamContents: [ :stream | 
			| name |
			name := testClass name.
			name first isVowel
				ifTrue: [ stream nextPutAll: 'An ' ]
				ifFalse: [ stream nextPutAll: 'A ' ].
			stream
				nextPutAll: name;
				nextPutAll: ' is a test class for testing the behavior of ';
				nextPutAll: targetClass name ]
]

{ #category : #execution }
ClyJumpToTestClassCommand >> newTestClassCategory [
	| tag |
	tag := targetClass package classTagForClass: targetClass.
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: targetClass package name;
				nextPutAll: '-Tests'.
			tag isRoot
				ifFalse: [ s
						nextPut: $-;
						nextPutAll: tag name ] ]
]
