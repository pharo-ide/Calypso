private
methodsOf: aClass do: aBlock
	aClass instanceSide localMethods do: aBlock.
	aClass classSide localMethods do: aBlock