updating
update

	editingMethod := editingMethod origin 
		localMethodNamed: editingMethod selector ifAbsent: [^self].
	
	super update.
	
	self formatTextIfNeeded.
	