private
prepareItems: browserItems

	browserItems do: [ :each | each ifNotNil: [ each prepareIn: self environment ]].
	^browserItems