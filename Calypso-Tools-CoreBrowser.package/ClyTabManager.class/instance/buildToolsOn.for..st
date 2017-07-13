private
buildToolsOn: toolsList for: aBrowserContext
	| tool |
	ClyBrowserTool
		allToolsFor: aBrowserContext
		do: [ :toolClass | 
			tool := toolClass for: aBrowserContext of: browser.
			toolsList add: tool ]