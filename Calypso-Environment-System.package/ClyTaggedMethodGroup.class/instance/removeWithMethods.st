operations
removeWithMethods
	super removeWithMethods.
	classes do: [ :each | each removeMethodTag: tag ]