I am a browser too decorator which adds extra panel with table of critiques related to the model of tool.
I show critiques of methods, classes and packages.

During tool decoration I create query view (criticView) on ClyAllBasisCritiques query in async mode.
While query is executed the criticView is hidden and special animation indicates analysis process in the status bar of the tool.
When query is complete and include any critique I show criticView panel to the user. 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	analysisScope:		<ClyScope>
	criticView:		<ClyQueryView>
	originalToolPanel:		<Morph>
	progressMorph:		<ClyActivityAnimationIconMorph>