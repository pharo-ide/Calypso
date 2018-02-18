initialization
newNavigationView
	| view |
	view := ClyQueryView for: self. 
	view contextClass: self navigationContextClass.
	navigationViews add: view.
	^view