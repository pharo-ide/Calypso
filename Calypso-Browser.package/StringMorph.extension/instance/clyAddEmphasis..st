*Calypso-Browser
clyAddEmphasis: aTextEmphasis
	"For compatibility between Pharo 6 and Pharo 7 and to not produce overrides"
	self emphasis: (emphasis bitOr: aTextEmphasis emphasisCode)