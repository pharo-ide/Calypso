building
build
	
	roots := IdentitySet withAll: classes.
	parentMap := IdentityDictionary new.
	
	classes do: [ :each |	hierarchy buildParentMap: self for: each]