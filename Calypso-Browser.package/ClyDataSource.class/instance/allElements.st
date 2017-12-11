accessing
allElements
	^(1 to: self numberOfRows) collect: [ :i | 
		self elementAt: i] 