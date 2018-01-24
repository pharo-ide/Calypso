accessing
navigationContextsDo: aBlock

	navigationViews do: [ :each | aBlock value: each createSelectionContext ]