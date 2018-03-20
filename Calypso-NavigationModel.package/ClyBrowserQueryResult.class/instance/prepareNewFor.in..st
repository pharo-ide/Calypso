initialization
prepareNewFor: aQuery in: aNavigationEnvironment
	| rawQuery |
	rawQuery := self prepareRawQueryFrom: aQuery.
	
	^(super prepareNewFor: rawQuery in: aNavigationEnvironment)
		rawResult: nil "To ensure that we will not use it before execution"