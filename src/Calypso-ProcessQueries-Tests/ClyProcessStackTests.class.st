Class {
	#name : #ClyProcessStackTests,
	#superclass : #ClyBrowserQueryResultTestCase,
	#instVars : [
		'process',
		'contexts'
	],
	#category : 'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #helpers }
ClyProcessStackTests >> bottomMethodInStack [
	^#bottomMethod
]

{ #category : #helpers }
ClyProcessStackTests >> buildStackFrom: processStackSelectors [
	
	self createProcessWith: processStackSelectors.
	
	queryResult fillWith: {process suspendedContext}.
	actualObjects := queryResult items collect: #actualObject
]

{ #category : #running }
ClyProcessStackTests >> createProcessWith: selectors [

	| eachContext |
	contexts := OrderedCollection new.
	selectors do: [ :each | 
		eachContext := self newContextFor: each.
		contexts ifNotEmpty: [ contexts last privSender: eachContext ].
		contexts add: eachContext].

	process := Process new.
	process suspendedContext: contexts first
]

{ #category : #running }
ClyProcessStackTests >> createQueryResult [
	^ClyProcessStack new
]

{ #category : #helpers }
ClyProcessStackTests >> method1InStack [
	^#method1
]

{ #category : #helpers }
ClyProcessStackTests >> newContextFor: aSelector [

	^Context sender: nil receiver: self method: self class >> aSelector arguments: #()
]

{ #category : #tests }
ClyProcessStackTests >> testIncludesAllContextsWhenTheyFitInCache [
	
	self buildStackFrom: #(topMethodInStack method1InStack bottomMethodInStack).
		
	self assert: actualObjects asArray equals: contexts asArray
]

{ #category : #helpers }
ClyProcessStackTests >> topMethodInStack [
	^#topMethod
]
