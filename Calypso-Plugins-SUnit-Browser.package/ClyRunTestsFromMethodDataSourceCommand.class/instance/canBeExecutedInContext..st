testing
canBeExecutedInContext: aBrowserContext

	^aBrowserContext browser methodView dataSource hasMetaProperty: ClyTestResultProperty 