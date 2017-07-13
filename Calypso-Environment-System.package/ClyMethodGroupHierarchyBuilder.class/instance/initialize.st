initialization
initialize
	super initialize.
	rootClasses := #().
	extractedRoots := OrderedCollection new.
	classParentsMap := IdentityDictionary.
	items := OrderedCollection new.
	depth := 0.
	processedClasses := OrderedCollection new.