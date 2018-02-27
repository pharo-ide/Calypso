as yet unclassified
installInto: aMorph
	"Dynamic update is done by #asString converting.
	But simple aMorph setBalloonText: also converts given argument to string.
	So here I use low level morph extension logic which simply assigns given tooltip instance"
	aMorph assureExtension balloonText: self