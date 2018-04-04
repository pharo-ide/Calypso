private
restoreSelectedTools: selectedTools
	| mainTool extraTools |
	tools ifEmpty: [ ^self ].
	mainTool := self selectMainTool.
	
	extraTools := selectedTools reject: [ :each | each class = mainTool class ].
	extraTools size = selectedTools size 
		ifTrue: [ extraTools := #() ] "if main tool not existed before then we reset previously selected extra tools"
		ifFalse: [ mainTool isExtraSelectionRequested 
			ifTrue: [ extraTools add: mainTool ] "To allow multiple selected tabs by cmd+click on table"].
	(tools copyWithout: mainTool) do: [ :currentTool | 
		"Generally if previously selected extra tab is found in new tools then it should be selected.
		Other tools should be deselected"
		extraTools 
			detect: [:oldTool | oldTool class = currentTool class  ]
			ifFound: [ self restoreSelectionOfExtraTool: currentTool]
			ifNone: [ currentTool deselectTab ]].
		
	extraTools ifNotEmpty: [ "last selected tab is looks different from others. We want main tool looks like last selected tab"
		mainTool deselectTab.
		mainTool selectAsExtraTab].

	mainTool waitBuildCompletion "to avoid blinking we try to wait a little bit until mainly selected tab wiull be build. When it is built fast it will look like no background building was happen"