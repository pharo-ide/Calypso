updating
updateWindowTitle

	self window ifNotNil: [ :w | 
		self setWindowTitle: self newWindowTitle in: w.
		"in the case when window is managed as tab by window group
		we should set up top group window label too"
		(self ownerThatIsA: GroupWindowMorph) ifNotNil: [:group | 
			self setWindowTitle: w labelString in: group window]
	]