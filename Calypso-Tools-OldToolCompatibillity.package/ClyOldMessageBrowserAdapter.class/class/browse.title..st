opening
browse: methods title: aString
	^ self new
		messages: methods;
		title: aString;
		open