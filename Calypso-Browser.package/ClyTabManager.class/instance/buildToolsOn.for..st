private
buildToolsOn: toolsList for: aBrowserContext
	| tool |
	ClyTabActivationStrategy 
		activeInstancesInContext: aBrowserContext
		do: [ :strategy | 
			tool := strategy createToolFor: browser inContext: aBrowserContext.
			toolsList add: tool ]