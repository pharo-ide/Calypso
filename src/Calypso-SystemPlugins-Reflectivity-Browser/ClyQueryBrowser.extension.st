Extension { #name : #ClyQueryBrowser }

{ #category : #'*Calypso-SystemPlugins-Reflectivity-Browser' }
ClyQueryBrowser class >> browseBreakpoints [
	"Excludes methods that contain halts marked as for testing. To browse all breakpoints, see this class's browseBreakpointsIncludingHaltsForTesting method"
	| query |
	query := ClyActiveBreakpoints as: (ClySortedQueryResult using: ClySortMethodByPackageFunction ascending).
	^ClyQueryBrowser openOn: query
]

{ #category : #'*Calypso-SystemPlugins-Reflectivity-Browser' }
ClyQueryBrowser class >> browseBreakpointsIncludingHaltsForTesting [
	| query |
	query := ClyActiveBreakpoints newIncludingHaltsForTesting withResult: (ClySortedQueryResult using: ClySortMethodByPackageFunction ascending).
	^ClyQueryBrowser openOn: query
]
