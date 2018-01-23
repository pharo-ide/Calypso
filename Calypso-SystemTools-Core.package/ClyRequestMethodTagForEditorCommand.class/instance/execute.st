execution
execute
	| tagEditor |
	tagEditor := methodEditor tagsAndPackageEditor.
	tagEditor requestChangeBy: [ tagEditor requestTag] 