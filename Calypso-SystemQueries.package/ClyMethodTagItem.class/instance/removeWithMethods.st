operations
removeWithMethods
	super removeWithMethods.
	methodQuery scope classesDo: [ :each | each removeMethodTag: self tag ]