I represent group of classes which does not marked by any tag.

I provide simple method to tag all my classes:

	aGroup renameClassTagTo: aSymbol
	
It is polymorphic to ClyTaggedClassGroup which performs actual tag renaming.

My class query is ClyRestUntaggedClasses 