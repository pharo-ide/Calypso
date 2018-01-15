dropping/grabbing
dragTab: aSystemWindow event: anEvent in: aTabLabel
	"Drag a tab. Remove the window from the organiser and place in hand."
	aSystemWindow announcer unsubscribe: self.
	self tabGroup removePage: aSystemWindow.
	aSystemWindow configureForUnembedding.
	self tabGroup pages size = 0 ifTrue: [ self owner delete ].
	aSystemWindow position: anEvent targetPoint.
	anEvent hand grabMorph: aSystemWindow