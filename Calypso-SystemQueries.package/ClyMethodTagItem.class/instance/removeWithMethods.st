operations
removeWithMethods
	super removeWithMethods.
	self methodQuery scope classesDo: [ :each | each removeMethodTag: self tag ]