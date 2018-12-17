Extension { #name : #ClyQueryBrowser }

{ #category : #'*Calypso-SystemPlugins-Reflectivity-Browser' }
ClyQueryBrowser class >> browseBreakpoints [
	"Excludes methods that contain halts marked as for testing. To browse all breakpoints, see this class's browseBreakpointsIncludingHaltsForTesting method"
	| b |
	b := ClyQueryBrowser openOn: ClyActiveBreakpoints new.
	b switchResultTo: (ClySortedQueryResult using: ClySortMethodByPackageFunction new).
]

{ #category : #'*Calypso-SystemPlugins-Reflectivity-Browser' }
ClyQueryBrowser class >> browseBreakpointsIncludingHaltsForTesting [
	| b |
	b := ClyQueryBrowser openOn: ClyActiveBreakpoints newIncludingHaltsForTesting.
	b switchResultTo: (ClySortedQueryResult using: ClySortMethodByPackageFunction new).
]
