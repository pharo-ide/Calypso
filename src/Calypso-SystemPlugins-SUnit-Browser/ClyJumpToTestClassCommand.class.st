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
	#instVars : [
		'testClass'
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

{ #category : #execution }
ClyJumpToTestClassCommand >> addNewCommentForTestClass: aClass basedOn: baseClass [
	aClass
		comment:
			(String
				streamContents: [ :stream | 
					| name |
					name := aClass name.
					name first isVowel
						ifTrue: [ stream nextPutAll: 'An ' ]
						ifFalse: [ stream nextPutAll: 'A ' ].
					stream
						nextPutAll: name;
						nextPutAll: ' is a test class for testing the behavior of ';
						nextPutAll: baseClass name ])
]

{ #category : #execution }
ClyJumpToTestClassCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	testClass ifNotNil: [ :class | aToolContext showClass: class ]
]

{ #category : #accessing }
ClyJumpToTestClassCommand >> defaultMenuItemName [
	^ 'Jump to test class'
]

{ #category : #execution }
ClyJumpToTestClassCommand >> execute [
	(self isValidClass: targetClass) ifFalse: [ ^ self ].
	testClass := self testClassFor: targetClass
]

{ #category : #testing }
ClyJumpToTestClassCommand >> isValidClass: inputClass [
	^ (inputClass isTestCase or: [ inputClass isMeta ]) not
]

{ #category : #execution }
ClyJumpToTestClassCommand >> newTestClassCategoryFor: aClass [
	| tag |
	tag := aClass package classTagForClass: aClass.
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: aClass package name;
				nextPutAll: '-Tests'.
			tag isRoot
				ifFalse: [ s
						nextPut: $-;
						nextPutAll: tag name ] ]
]

{ #category : #execution }
ClyJumpToTestClassCommand >> testClassFor: inputClass [
	| className resultClass |
	className := (inputClass name , 'Test') asSymbol.
	self class environment
		at: className
		ifPresent: [ :class | resultClass := class ]
		ifAbsent: [ RPackageOrganizer default ensureExistAndRegisterPackageNamed: inputClass package name asString , '-Tests'.
			resultClass := TestCase
				subclass: className
				instanceVariableNames: ''
				classVariableNames: ''
				package: (self newTestClassCategoryFor: inputClass).
			self addNewCommentForTestClass: resultClass basedOn: inputClass ].
	^ resultClass
]
