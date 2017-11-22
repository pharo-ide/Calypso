navigation
switchMethodScopeTo: aClassScope

	| newDS |

	self changeStateBy: [
		methodGroupQuery := methodGroupQuery withScope: aClassScope.
		newDS := ClyCollapsedDataSource on: methodGroupQuery.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]