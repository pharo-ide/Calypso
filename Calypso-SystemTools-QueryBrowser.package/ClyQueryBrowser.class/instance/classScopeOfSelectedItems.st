accessing
classScopeOfSelectedItems
	| classes |
	classes := self selection items
		collect: [ :methodItem | methodItem systemDefinition definingClass ].
	^ ClyBothMetaLevelClassScope ofAll: classes in: navigationEnvironment