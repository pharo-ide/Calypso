operations
removeWithMethods
	super removeWithMethods.
	classScope do: [ :each | each removeMethodTag: self tag ]