decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| buttons |
	buttons := Morph new 
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		color: Color transparent.		
	(aDataSourceItem isMarkedWith: ClyOverrideTag) ifTrue: [ 
		 ].
	(aDataSourceItem isMarkedWith: ClyOverriddenTag) ifTrue: [ 
		 ].
	anItemCellMorph definitionMorph: buttons