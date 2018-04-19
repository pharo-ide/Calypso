removing
removeWithClasses

	super removeWithClasses.
	self classQuery scope packagesDo: [ :each |
		each removeClassTag: self tag]