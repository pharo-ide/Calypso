printing
description
	^String streamContents: [:s | 
		s nextPutAll: self class name.
		s nextPut: $(.
		self printExtraInfoOn: s.
		s nextPut: $)]