accessing
tagsAndPackageEditor
	^(statusBar findDeeplyA: ClyMethodTagsAndPackageEditor) ifNil: [ CmdCommandAborted signal ]