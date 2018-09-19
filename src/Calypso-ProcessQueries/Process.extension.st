Extension { #name : #Process }

{ #category : #'*Calypso-ProcessQueries' }
Process class >> convertToCalypsoBrowserItem: aProcess [

	^ClyBrowserItem named: aProcess name with: aProcess
]

{ #category : #'*Calypso-ProcessQueries' }
Process class >> decorateBrowserItem: aBrowserItem by: anEnvironmentPlugin [
	anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofProcess: aBrowserItem actualObject
]

{ #category : #'*Calypso-ProcessQueries' }
Process class >> defaultSortFunctionForCalypso [
	^ClySortProcessByPriorityFunction ascending
]
