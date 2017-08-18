initialization
defaultItems
	^SortedCollection sortBlock: [ :a :b | a actualObject priority > b actualObject priority ]