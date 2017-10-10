*Calypso-Tools-CoreBrowser
activateFilterWith: patternString
	(function isKindOf: FTFilterFunction) ifFalse: [ ^self ].
	
	function filterNowWith: patternString