opening
browse: methods title: aString autoSelect: aSelectString
	^ self new
		messages: methods;
		title: aString;
		autoSelect: aSelectString;
		open