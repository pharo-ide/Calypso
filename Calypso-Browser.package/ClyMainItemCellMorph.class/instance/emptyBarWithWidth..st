building
emptyBarWithWidth: aNumber
	| bar |
	bar := Morph new.
	bar 
		setNamePropertyTo: 'emptyBar';
		color: Color transparent;
		changeTableLayout;		
		vResizing: #spaceFill;
		hResizing: #rigid;
		minWidth: 0;
		width: aNumber.
	^bar