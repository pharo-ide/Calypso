private
existingBasisClassesDo: aBlock
	
	basisObjects 
		reject: [ :each | each isObsolete]
		thenDo: aBlock