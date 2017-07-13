updating
updateWindowTitle

	self window ifNotNil: [ :w | 
		w setLabel: self newWindowTitle.
		"in the case when window is managed as tab by window group
		we should set up top group window label too"
		(self ownerThatIsA: GroupWindowMorph) ifNotNil: [:group | 
			group window setLabel: w label]
	]