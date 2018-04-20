decoration
adoptBrowserToolLayout

	originalToolPanel := PanelMorph new.
	originalToolPanel 
		name: 'original tool elements';
		color: Color transparent;		
		borderWidth: 0;
		layoutPolicy: browserTool layoutPolicy.
	browserTool submorphs do: [ :each | originalToolPanel addMorphBack: each ].
	browserTool changeProportionalLayout.
	browserTool addMorph: originalToolPanel fullFrame: (0@0 corner: 1@1) asLayoutFrame