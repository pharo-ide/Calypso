initialization
newContentMorph
	itemsView := ClyQueryView for: self.
	itemsView width: 250.
		
	itemsView whenDoubleClickDo: [:ann | self ok ].
	itemsView whenEnterKeyPressedDo: [:ann | self ok ].
	itemsView whenEscapeKeyPressedDo: [:ann | self cancel ].
	^itemsView