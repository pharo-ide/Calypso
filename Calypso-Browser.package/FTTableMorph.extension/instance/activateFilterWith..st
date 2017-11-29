*Calypso-Browser
activateFilterWith: patternString
	(function isKindOf: FTFilterFunction) ifFalse: [ ^self ].
	
	function filterNowWith: patternString