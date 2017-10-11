private
buildToolsOn: toolsList for: aBrowserContext
	| tool |
	ClyTabActivationStrategy 
		activeInstancesInContext: aBrowserContext
		do: [ :strategy | 
			tool := strategy createToolFor: aBrowserContext of: browser.
			toolsList add: tool ]