"
I represent state of full browser. 
So I keep its current metaLevelScope and methodGroupQuery.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	metaLevelScope:		<ClyMetaLevelClassScope>
	methodGroupQuery:		<ClyQuery>
"
Class {
	#name : #ClyFullBrowserState,
	#superclass : #ClyBrowserState,
	#instVars : [
		'metaLevelScope',
		'methodGroupQuery',
		'mode'
	],
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #private }
ClyFullBrowserState >> createBrowser [
	^ClyFullBrowser new
]

{ #category : #accessing }
ClyFullBrowserState >> metaLevelScope [
	^ metaLevelScope
]

{ #category : #accessing }
ClyFullBrowserState >> metaLevelScope: anObject [
	metaLevelScope := anObject
]

{ #category : #accessing }
ClyFullBrowserState >> methodGroupQuery [
	^ methodGroupQuery
]

{ #category : #accessing }
ClyFullBrowserState >> methodGroupQuery: aQuery [
	methodGroupQuery := aQuery
]

{ #category : #accessing }
ClyFullBrowserState >> mode [
	^ mode
]

{ #category : #accessing }
ClyFullBrowserState >> mode: anObject [
	mode := anObject
]

{ #category : #private }
ClyFullBrowserState >> restoreStateOf: aBrowser [
	super restoreStateOf: aBrowser.
	
	aBrowser 
		metaLevelScope: metaLevelScope;
		methodGroupQuery: methodGroupQuery;
		mode: (mode copy browser: aBrowser)
]

{ #category : #operations }
ClyFullBrowserState >> retrieveStateFrom: aBrowser [
	super retrieveStateFrom: aBrowser.
	
	metaLevelScope := aBrowser metaLevelScope.
	methodGroupQuery := aBrowser methodGroupQuery.
	mode := aBrowser mode copy browser: nil
]
