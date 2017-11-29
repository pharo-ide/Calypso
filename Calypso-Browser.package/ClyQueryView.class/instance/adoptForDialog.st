controlling
adoptForDialog
	self itemCount < 10
		ifTrue: [ self height: 100 ]
		ifFalse: [ self height: 300; enableFilter ].