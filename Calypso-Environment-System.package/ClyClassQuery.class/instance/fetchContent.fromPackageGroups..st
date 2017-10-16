execution
fetchContent: aQueryResult fromPackageGroups: packageGroups

	self fetchContent: aQueryResult fromPackages: (packageGroups flatCollect: #allPackages)