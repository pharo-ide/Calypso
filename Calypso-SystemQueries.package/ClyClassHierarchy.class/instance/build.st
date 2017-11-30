building
build
	roots := parentMap containerForChildren.
	
	classes do: [ :each |	self buildParentMapFor: each]