building
buildAndDecorate
	self isBuilt ifTrue: [ ^self ] "somehow tab manager can call building process multiple times".
	self setUpParametersFromModel.
	self decorateContainerTab.
	self build. 
	self buildStatusBar.
	self applyDecorations.
	self attachToSystem