controlling
processClassRemoval: aClassRemoved

	| class |
	class := aClassRemoved classAffected.
	environment systemChanged: (ClyClassHierarchyChanged modifiedClass: class)