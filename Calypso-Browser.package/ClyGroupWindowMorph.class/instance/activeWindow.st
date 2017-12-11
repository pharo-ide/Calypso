updating
activeWindow
	self tabGroup pages size = 0 ifTrue: [ ^nil].
	self tabGroup selectedPageIndex <= 0 ifTrue: [ ^nil ].
	
	^self tabGroup pages at: self tabGroup selectedPageIndex