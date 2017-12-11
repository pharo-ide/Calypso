items resolving
prepareBrowserItem: anItem ofCritique: aCritique

	anItem addProperty: (ClyCritiqueSeverity of: aCritique).
	aCritique sourceAnchor ifNotNil: [ :anchor | 
		anchor providesInterval ifTrue: [ 
			anItem addProperty: (ClySourceNodeCritiqueInterval from: anchor interval)]].
	aCritique providesChange	ifTrue: [ anItem markWith: ClyCritiqueFixableTag ]