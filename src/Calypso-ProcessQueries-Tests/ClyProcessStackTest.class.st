Class {
	#name : #ClyProcessStackTest,
	#superclass : #ClyBrowserQueryResultTestCase,
	#instVars : [
		'process',
		'contexts'
	],
	#category : #'Calypso-ProcessQueries-Tests-Results'
}

{ #category : #helpers }
ClyProcessStackTest >> bottomMethodInStack [
	^#bottomMethod
]

{ #category : #helpers }
ClyProcessStackTest >> buildStackFrom: processStackSelectors [
	
	self createProcessWith: processStackSelectors.
	
	queryResult fillWith: {process suspendedContext}.
	actualObjects := queryResult items collect: #actualObject
]

{ #category : #running }
ClyProcessStackTest >> createProcessWith: selectors [

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
ClyProcessStackTest >> createQueryResult [
	^ClyProcessStack new
]

{ #category : #helpers }
ClyProcessStackTest >> method1InStack [
	^#method1
]

{ #category : #helpers }
ClyProcessStackTest >> newContextFor: aSelector [

	^Context sender: nil receiver: self method: self class >> aSelector arguments: #()
]

{ #category : #tests }
ClyProcessStackTest >> testIncludesAllContextsWhenTheyFitInCache [
	
	self buildStackFrom: #(topMethodInStack method1InStack bottomMethodInStack).
		
	self assert: actualObjects asArray equals: contexts asArray
]

{ #category : #helpers }
ClyProcessStackTest >> topMethodInStack [
	^#topMethod
]
