accessing
currentContextsDo: aBlock

	navigationViews do: [ :each | aBlock value: each createSelectionContext ]