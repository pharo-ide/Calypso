events handling
changesAreAboutApply
	| tagsEditor |
	super changesAreAboutApply.
	
	tagsEditor := statusBar findDeeplyA: ClyMethodTagsEditor.
	tagsEditor ifNil: [ ^self ].
	
	tagsEditor acceptTags