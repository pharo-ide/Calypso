*Calypso-Browser
filterNowWith: patternString
	pattern := patternString.
	self field setText: pattern.
	self filterWith: pattern.
	self filter.
	