*Calypso-SystemTools-Core
createAllForBrowser: aBrowser

	| result |
	result := SortedCollection sortBlock: #orderForBrowser ascending.
	
	self allSubclassesDo: [ :each | 
		each hasSubclasses ifFalse: [ 
			result add: (each newForBrowser: aBrowser) ]].
	
	^result