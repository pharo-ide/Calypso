building
buildExtensionItemsOn: classes

	| extensions |
	extensions := self buildItemsOn: classes.
	extensions do: [ :each | each markWith: ClyExtendedClassTag ].
	^extensions