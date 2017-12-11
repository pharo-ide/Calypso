building
buildExtensionItemsFrom: classes

	| extensions |
	extensions := self buildItemsFrom: classes.
	extensions do: [ :each | each markWith: ClyExtendedClassTag ].
	^extensions