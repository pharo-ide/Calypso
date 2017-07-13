tests
testBuildingFromOnePackagesWithExtensionsButWithoutTags
	| packages |
	packages := environment selectScope: ClyPackageScope of: { ClyClass1FromP1 package}.
	
	self retrieveContentFrom: packages.
	
	"self assert: actualObjects first class equals: LBNoTagClassGroup." "it is not necessary behaviour"
	self assert: actualObjects last class equals: ClyExtendedClassGroup