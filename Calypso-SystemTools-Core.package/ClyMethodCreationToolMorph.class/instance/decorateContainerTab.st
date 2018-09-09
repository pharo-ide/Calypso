initialization
decorateContainerTab
	| title |
	super decorateContainerTab.
	
	browser metaLevelScope == ClyClassSideScope ifFalse: [ ^self].
	 
	title := self defaultTitle asText allBold asStringMorph. 
	containerTab label: title