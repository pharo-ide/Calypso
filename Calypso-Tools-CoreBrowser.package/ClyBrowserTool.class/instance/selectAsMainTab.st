controlling
selectAsMainTab
	containerTab selected: true.
	
	"this is hack to fix blinking during tabs activation"
	(browser tabManager tabMorph instVarNamed: #contentsWrapper) color: self activeColor