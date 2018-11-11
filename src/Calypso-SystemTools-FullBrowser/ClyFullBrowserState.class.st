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
		'browseMethodsMode'
	],
	#category : #'Calypso-SystemTools-FullBrowser-UI'
}

{ #category : #accessing }
ClyFullBrowserState >> classBrowserMode [
	^ browseMethodsMode
]

{ #category : #accessing }
ClyFullBrowserState >> classBrowserMode: anObject [
	browseMethodsMode := anObject
]

{ #category : #private }
ClyFullBrowserState >> createBrowser [
	^ClyFullBrowser new
]

{ #category : #private }
ClyFullBrowserState >> restoreStateOf: aBrowser [
	super restoreStateOf: aBrowser.
	
	aBrowser classBrowserMode: (browseMethodsMode copy browser: aBrowser)
]

{ #category : #operations }
ClyFullBrowserState >> retrieveStateFrom: aBrowser [
	super retrieveStateFrom: aBrowser.
	
	browseMethodsMode := aBrowser classBrowserMode copy browser: nil
]
