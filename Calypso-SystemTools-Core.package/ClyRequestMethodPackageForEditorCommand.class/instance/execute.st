execution
execute
	| packageEditor |
	packageEditor := methodEditor tagsAndPackageEditor.
	packageEditor requestChangeBy: [ packageEditor requestPackage]