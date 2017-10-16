execution
fetchResultAs: aQueryResult fromPackageGroups: packageGroups

	self fetchResultAs: aQueryResult fromPackages: (packageGroups flatCollect: #allPackages)