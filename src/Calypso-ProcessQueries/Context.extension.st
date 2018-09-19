Extension { #name : #Context }

{ #category : #'*Calypso-ProcessQueries' }
Context class >> convertToCalypsoBrowserItem: aContext [
	^ClyBrowserItem named: aContext method selector with: aContext
]

{ #category : #'*Calypso-ProcessQueries' }
Context class >> decorateBrowserItem: aBrowserItem by: anEnvironmentPlugin [
	anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofContext: aBrowserItem actualObject
]
