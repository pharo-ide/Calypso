converting
adoptForBrowser
	"In case when actual query produces browser items 
	we should adopt our own interface to the interface of ClyBrowserQueryResult.
	Otherwise when actual query do not produce browser items 
	we just use superclass adapter for raw items"
	buildingQuery retrievesBrowserItems ifTrue: [ 
		^ClyAsyncBrowserQueryResultAdapter for: self ].
	
	^super adoptForBrowser