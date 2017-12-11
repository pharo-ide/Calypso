*Calypso-SystemPlugins-FileOut-Queries
fileOut

	classQuery scope packagesDo: [ :each |
		(each classTagNamed: self tag) fileOut]