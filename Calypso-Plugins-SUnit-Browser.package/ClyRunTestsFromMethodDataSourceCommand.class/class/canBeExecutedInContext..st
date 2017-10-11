testing
canBeExecutedInContext: aBrowserContext

	^aBrowserContext browser resultView dataSource hasMetaProperty: ClyTestResultProperty 