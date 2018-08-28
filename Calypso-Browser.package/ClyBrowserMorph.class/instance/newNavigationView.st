initialization
newNavigationView
	| view |
	view := ClyQueryViewMorph for: self. 
	navigationViews add: view.
	^view