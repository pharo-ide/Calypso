*Calypso-Plugins-FileOut-Environment
fileOut

	classQuery scope packagesDo: [ :each |
		(each classTagNamed: self tag) fileOut]