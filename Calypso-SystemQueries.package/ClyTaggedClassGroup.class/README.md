I represent group of classes which does marked by specific tag.

You can create my instance using: 

	ClyTaggedClassGroup withClassesFrom: aPackageScope taggedBy: aSymbol.
	 
I provide simple method to rename this tag:

	aGroup renameClassTagTo: aSymbol

Which in fact untags all classes and then marks them with new tag.

For the #removeWithClasses operation I remove empty class tag from registrered tags of package.
	
My class query is ClyTaggedClasses