*Calypso-SystemPlugins-ClassScripts-Browser
isClassScriptSelected

	^self isMethodSelected and: [ 
		(self lastSelectedObjectIn: self selectedMethodItems) hasProperty: ClyClassScriptProperty]