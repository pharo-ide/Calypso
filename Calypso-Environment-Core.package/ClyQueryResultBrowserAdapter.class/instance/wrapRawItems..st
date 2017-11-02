private
wrapRawItems: objects

	| result |
	result := objects collect: #asCalypsoBrowserItem.
	result do: [ :each | each prepareIn: self environment ].
	^result