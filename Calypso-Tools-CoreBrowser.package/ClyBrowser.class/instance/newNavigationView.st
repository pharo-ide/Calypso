initialization
newNavigationView
	| view |
	view := ClyQueryView for: self. 
	navigationViews add: view.
	^view