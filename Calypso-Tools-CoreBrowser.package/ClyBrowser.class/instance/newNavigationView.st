initialization
newNavigationView
	| view |
	view := ClyNavigationView for: self. 
	navigationViews add: view.
	^view