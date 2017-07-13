private
selectMainTool
	| mainTool |
	mainTool := self mainTool.		
	mainTool selectAsMainTab.
	
	^mainTool