as yet unclassified
buildMultiIcon

	| iconMorph transformatin |
	iconMorph := Morph new.
	iconMorph 
		color: Color transparent;
		changeTableLayout;
		cellInset: 1;
		layoutInset: 0;
		listDirection: #topToDown;
		wrapDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.
	contents do: [ :each | iconMorph addMorphBack: each ].
	iconMorph vResizing: #rigid.
	iconMorph height: (iconMorph height / 2.0) floor.
	iconMorph hResizing: #rigid.
	iconMorph width > iconMorph height 
		ifTrue: [ iconMorph height: iconMorph width ]
		ifFalse: [ iconMorph width: iconMorph height].
	transformatin := iconMorph newTransformationMorph asFlexOf: iconMorph.
	transformatin extent: self extent.
	multiIconForm := transformatin imageForm.
	self addMorphBack: multiIconForm asMorph