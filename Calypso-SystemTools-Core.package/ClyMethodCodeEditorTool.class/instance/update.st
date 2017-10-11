updating
update
	editingMethod := editingMethod origin >> editingMethod selector. "here we explicitly ask class for new method because context information can be wrong because of specific of method editing
	it needs better solution"

	super update.
	
	self formatTextIfNeeded