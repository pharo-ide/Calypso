initialization
initializeNavigationPanel
	
	| eachViewExtent lastViewLeft |
	navigationPanel := PanelMorph new.
	navigationPanel name: 'navigation panel'.
	navigationPanel changeProportionalLayout.	
	navigationViews := OrderedCollection new.
	self initializeNavigationViews.
	
	eachViewExtent := 1.0 / navigationViews size.
	lastViewLeft := 0.0.
	navigationViews do: [ :each | | frame |
		frame := (lastViewLeft @ 0.0 corner: lastViewLeft + eachViewExtent @ 1.0) asLayoutFrame.
		each == navigationViews last ifFalse: [ 
			frame := frame rightOffset: -4 ].
		navigationPanel 
			addMorph: each 
			fullFrame: frame.
		lastViewLeft := lastViewLeft + eachViewExtent ].
	
	navigationPanel addPaneSplitters.
	self addMorph: navigationPanel fullFrame: ((0.0 @ 0 corner: 1.0 @ 0.5) asLayoutFrame bottomOffset: toolbar height negated)