events handling
changesAreAboutApply
	| tagsEditor |
	super changesAreAboutApply.
	
	tagsEditor := statusBar findDeeplyA: ClyMethodTagsEditorMorph.
	tagsEditor ifNil: [ ^self ].
	
	tagsEditor acceptTags