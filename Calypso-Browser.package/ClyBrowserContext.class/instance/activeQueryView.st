accessing
activeQueryView

	^self browser navigationViews detect: [ :each |
		each createSelectionContext class = self class ]