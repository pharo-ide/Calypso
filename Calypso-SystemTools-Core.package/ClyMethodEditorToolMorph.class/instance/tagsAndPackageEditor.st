accessing
tagsAndPackageEditor
	^(statusBar findDeeplyA: ClyMethodTagsAndPackageEditorMorph) ifNil: [ CmdCommandAborted signal ]