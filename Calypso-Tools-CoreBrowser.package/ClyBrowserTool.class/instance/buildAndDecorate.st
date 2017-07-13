building
buildAndDecorate
	self isBuilt ifTrue: [ ^self ] "somehow tab manager can call building process multiple times".
	self setUpContextParameters.
	self decorateContainerTab.
	self build. 
	self buildStatusBar.
	self applyDecorations