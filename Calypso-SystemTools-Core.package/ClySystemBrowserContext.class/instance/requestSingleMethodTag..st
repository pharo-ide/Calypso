user requests
requestSingleMethodTag: queryTitle
	| knownTags ui selectedTag |
	knownTags := (SystemNavigation default allExistingProtocolsFor: true)
		reject: [ :each | each beginsWith: '*' ].
	knownTags := knownTags asSortedCollection: [ :a :b | a asLowercase < b asLowercase ].	
	ui := ListDialogWindow new
		getList: [ :r | knownTags select: [ :e | r search: e ] ];
		displayBlock: [ :e | e ];
		initialAnswer: '';
		acceptNewEntry: true;
		title: queryTitle;
		yourself.
	selectedTag := ui chooseFromOwner: tool.
	selectedTag isEmptyOrNil ifTrue: [ CmdCommandAborted signal].
	^selectedTag