"
Description
--------------------

I am a command available in the method context menu of Calypso. When activated I'll jump on the test method corresponding to the method. 

If the method does not exists I will create it in the corresponding class.

Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	selectedMethods:			<aCollection>	Methods selected by the user that should have their tests generated.
	testMethodToBrowse:		<aMethod>			The method to browse at the end of the execution of the command.

"
Class {
	#name : #ClyJumpToTestMethodCommand,
	#superclass : #SycMethodCommand,
	#traits : 'TClyGenerateTestClass',
	#classTraits : 'TClyGenerateTestClass classTrait',
	#instVars : [
		'testMethodToBrowse',
		'browser'
	],
	#category : #'Calypso-SystemPlugins-SUnit-Browser-Commands'
}

{ #category : #testing }
ClyJumpToTestMethodCommand class >> canBeExecutedInContext: aBrowserContext [
	^ aBrowserContext isInstanceSideMethodSelected and: [ aBrowserContext selectedMethods anySatisfy: [ :each | each isTestMethod not ] ]
]

{ #category : #activation }
ClyJumpToTestMethodCommand class >> methodMenuActivation [
	<classAnnotation>
	^ CmdContextMenuActivation byItemOf: ClySUnitMethodMenuGroup order: 10 for: ClyMethod asCalypsoItemContext
]

{ #category : #activation }
ClyJumpToTestMethodCommand class >> methodShortcutActivation [
	<classAnnotation>
	^ CmdShortcutActivation by: $h meta , $j meta for: ClyMethod asCalypsoItemContext
]

{ #category : #accessing }
ClyJumpToTestMethodCommand >> defaultMenuItemName [
	^ 'Jump to test method'
]

{ #category : #execution }
ClyJumpToTestMethodCommand >> execute [
	self methods ifEmpty: [ self inform: 'No method selected'. ^ self ].
	
	self methods do: [ :method | self generateTestMethodFor: method ].
	
	testMethodToBrowse ifNotNil: [ :testMethod | browser showMethod: testMethod ]
]

{ #category : #execution }
ClyJumpToTestMethodCommand >> generateTestMethodFor: aMethod [
	(self testClassFor: aMethod methodClass)
		ifNotNil: [ :testClass | 
			| selector |
			selector := self testMethodNameFor: aMethod.
			
			(testClass includesSelector: selector) ifFalse: [ self generateTestMethodNamed: selector in: testClass for: aMethod ].
			
			testMethodToBrowse := testClass >> selector ]
]

{ #category : #action }
ClyJumpToTestMethodCommand >> generateTestMethodNamed: aSymbol in: aClass for: aMethod [
	| body |
	body := '{1}

	self flag: #toImplement.
	self assert: false' format: {aSymbol}.
	aClass compile: body classified: 'test - ' , aMethod category
]

{ #category : #execution }
ClyJumpToTestMethodCommand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	browser := aToolContext
]

{ #category : #accessing }
ClyJumpToTestMethodCommand >> testMethodNameFor: aMethod [
	^ (String
		streamContents: [ :s | 
			s nextPutAll: 'test'.
			(aMethod selector splitOn: $:) do: [ :each | s nextPutAll: each capitalized ] ]) asSymbol
]
