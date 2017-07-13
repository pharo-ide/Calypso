building
buildFromPackageGroups: packageGroups

	self buildFromPackages: (packageGroups flatCollect: #allPackages)