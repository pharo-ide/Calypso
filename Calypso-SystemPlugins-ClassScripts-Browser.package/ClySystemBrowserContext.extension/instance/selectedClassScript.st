*Calypso-SystemPlugins-ClassScripts-Browser
selectedClassScript

	| methodItem |
	methodItem := self lastSelectedObjectIn: self selectedMethodItems.
	^(methodItem getProperty: ClyClassScriptProperty) script