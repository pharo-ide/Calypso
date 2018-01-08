decoration
createMultiIconMorph

	^Morph new 
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		vResizing: #shrinkWrap;
		extent: 12@12;
		color: Color transparent