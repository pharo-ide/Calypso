*Calypso-SystemPlugins-Critic-Queries
decorateBrowserItem: aBrowserItem by: anEnvironmentPlugin
	| critique |
	critique := aBrowserItem actualObject.
	
	aBrowserItem addProperty: (ClyCritiqueSeverity of: critique).
	critique sourceAnchor ifNotNil: [ :anchor | 
		anchor providesInterval ifTrue: [ 
			aBrowserItem addProperty: (ClySourceNodeCritiqueInterval from: anchor interval)]].
	critique providesChange	ifTrue: [ aBrowserItem markWith: ClyCritiqueFixableTag ]