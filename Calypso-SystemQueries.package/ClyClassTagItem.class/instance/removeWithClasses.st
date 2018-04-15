operations
removeWithClasses

	super removeWithClasses.
	classQuery scope packagesDo: [ :each |
		each removeClassTag: self tag]