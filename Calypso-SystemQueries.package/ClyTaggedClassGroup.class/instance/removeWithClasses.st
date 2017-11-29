operations
removeWithClasses

	super removeWithClasses.
	classQuery packagesDo: [ :each |
		each removeClassTag: self tag]