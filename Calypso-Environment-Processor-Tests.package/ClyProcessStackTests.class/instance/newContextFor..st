helpers
newContextFor: aSelector

	^Context sender: nil receiver: self method: self class >> aSelector arguments: #()