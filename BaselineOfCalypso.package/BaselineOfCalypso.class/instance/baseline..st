baselines
baseline: spec
   <baseline>

	spec for: #'common' do: [
		spec postLoadDoIt: #initializeDecorators.
		spec 
			baseline: 'Commander' with: [
				spec repository: 'github://dionisiydk/Commander:v0.2.x' ];
			baseline: 'SystemCommands' with: [
				spec repository: 'github://dionisiydk/SystemCommands:v0.2.x' ].			
		spec 
			package: #'Calypso-Environment-Core';
			package: #'Calypso-Environment-System' with: [
				spec requires: #(#'Calypso-Environment-Core' ). ];
			package: #'Calypso-Environment-System-Tests' with: [
				spec requires: #(#'Calypso-Environment-System' #'Calypso-Environment-System-Tests-PWithSingleClass' #'Calypso-Environment-System-Tests-PExtendedByP1' #'Calypso-Environment-System-Tests-P1WithHierarchy' #'Calypso-Environment-System-Tests-P2WithSubclassFromP1' #'Calypso-Environment-System-Tests-P3WithSubclassFromP2' #'Calypso-Environment-System-Tests-PExtendedByP5' #'Calypso-Environment-System-Tests-P5WithTags' #'Calypso-Environment-System-Tests-PWithClassAndTraits' #'Calypso-Environment-System-Tests-PExtendingTrait' ). ];
			package: #'Calypso-Environment-System-Tests-P1WithHierarchy' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-PExtendedByP1' ). ];
			package: #'Calypso-Environment-System-Tests-P2WithSubclassFromP1' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-P1WithHierarchy' ). ];
			package: #'Calypso-Environment-System-Tests-P3WithSubclassFromP2' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-P2WithSubclassFromP1' ). ];
			package: #'Calypso-Environment-System-Tests-P5WithTags' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-PExtendedByP5' ). ];
			package: #'Calypso-Environment-System-Tests-PExtendedByP1' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-PWithSingleClass' ). ];
			package: #'Calypso-Environment-System-Tests-PExtendedByP5';
			package: #'Calypso-Environment-System-Tests-PExtendingTrait' with: [
				spec requires: #(#'Calypso-Environment-System-Tests-PWithClassAndTraits' ). ];
			package: #'Calypso-Environment-System-Tests-PWithClassAndTraits';
			package: #'Calypso-Environment-System-Tests-PWithSingleClass';
			package: #'Calypso-Plugins-Critic-Browser' with: [
				spec requires: #(#'Calypso-Tools-SystemBrowser' #'Calypso-Plugins-Critic-Environment' ). ];
			package: #'Calypso-Plugins-Critic-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: 'Calypso-Plugins-Critic-Environment-Tests' with: [
				spec requires: #(#'Calypso-Plugins-Critic-Environment' #'Calypso-Environment-System-Tests' ). ];
			package: #'Calypso-Plugins-Deprecation-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Deprecation-Environment' #'Calypso-Tools-SystemBrowser' ). ];
			package: #'Calypso-Plugins-Deprecation-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Deprecation-Environment-Tests' with: [
				spec requires: #(#'Calypso-Plugins-Deprecation-Environment' ). ];
			package: #'Calypso-Plugins-FileOut-Browser' with: [
				spec requires: #(#'Calypso-Plugins-FileOut-Environment' #'Calypso-Tools-CoreBrowser' ). ];
			package: #'Calypso-Plugins-FileOut-Environment';
			package: 'Calypso-Plugins-InheritanceAnalyzer-Browser' with: [
				spec requires: #('Calypso-Plugins-InheritanceAnalyzer-Environment' #'Calypso-Tools-SystemBrowser' ). ];
			package: 'Calypso-Plugins-InheritanceAnalyzer-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: 'Calypso-Plugins-InheritanceAnalyzer-Environment-Tests' with: [
				spec requires: #('Calypso-Plugins-InheritanceAnalyzer-Environment' ). ];
			package: #'Calypso-Plugins-MethodDiffTool' with: [
				spec requires: #(#'Calypso-Tools-CoreBrowser' ). ];
			package: #'Calypso-Plugins-Monticello-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Monticello-Environment' #'Calypso-Tools-SystemBrowser' ). ];
			package: #'Calypso-Plugins-Monticello-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Nautilus-Browser' with: [
				spec requires: #(#'Calypso-Tools-CoreBrowser' ). ];
			package: #'Calypso-Plugins-Reflectivity-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Reflectivity-Environment' #'Calypso-Tools-SystemBrowser' ). ];
			package: #'Calypso-Plugins-Reflectivity-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Reflectivity-Environment-Tests' with: [
				spec requires: #(#'Calypso-Environment-System-Tests' #'Calypso-Plugins-Reflectivity-Environment' ). ];
			package: #'Calypso-Plugins-SUnit-Browser' with: [
				spec requires: #(#'Calypso-Plugins-SUnit-Environment' #'Calypso-Tools-SystemBrowser' ). ];
			package: #'Calypso-Plugins-SUnit-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Tools-CoreBrowser' with: [
				spec requires: #(#'Calypso-Environment-System' 'Commander' 'SystemCommands' ). ];
			package: #'Calypso-Tools-CoreBrowser-Tests' with: [
				spec requires: #(#'Calypso-Tools-CoreBrowser' ). ];

			package: #'Calypso-Tools-SystemBrowser' with: [
				spec requires: #(#'Calypso-Tools-CoreBrowser' ). ];
			package: #'Calypso-Tools-SystemBrowser-Tests' with: [
				spec requires: #(#'Calypso-Tools-SystemBrowser' ). ];
			
			package: #'Calypso-Tools-MethodBrowser' with: [
				spec requires: #(#'Calypso-Tools-SystemBrowser' ). ];
			package: #'Calypso-Tools-MethodBrowser-Tests' with: [
				spec requires: #(#'Calypso-Tools-MethodBrowser' ). ];			
			
			package: #'Calypso-Tools-OldToolCompatibillity' with: [
				spec requires: #(#'Calypso-Tools-MethodBrowser' ). ].

		spec 
			group: 'Browser' with: #(#'Calypso-Tools-SystemBrowser' #'Calypso-Tools-MethodBrowser' );
			group: 'Core' with: #('Environment' 'Browser' );
			group: 'Environment' with: #(#'Calypso-Environment-System' #'Calypso-Environment-Core' );
			group: 'FullBrowser' with: #('Browser' #'Calypso-Plugins-Monticello-Browser' #'Calypso-Plugins-SUnit-Browser' #'Calypso-Plugins-Nautilus-Browser' #'Calypso-Tools-OldToolCompatibillity' #'Calypso-Plugins-Critic-Browser' 'Calypso-Plugins-InheritanceAnalyzer-Browser' #'Calypso-Plugins-FileOut-Browser' #'Calypso-Plugins-MethodDiffTool' #'Calypso-Plugins-Deprecation-Browser' #'Calypso-Plugins-Reflectivity-Browser' );
			group: 'FullEnvironment' with: #(#'Calypso-Plugins-Monticello-Environment' #'Calypso-Plugins-SUnit-Environment' 'Environment' 'Calypso-Plugins-InheritanceAnalyzer-Environment' #'Calypso-Plugins-FileOut-Environment' #'Calypso-Plugins-Deprecation-Environment' #'Calypso-Plugins-Reflectivity-Environment' #'Calypso-Plugins-Critic-Environment' );
			group: 'Tests' with: #(#'Calypso-Environment-System-Tests' #'Calypso-Tools-CoreBrowser-Tests' 'Calypso-Plugins-InheritanceAnalyzer-Environment-Tests' #'Calypso-Plugins-Deprecation-Environment-Tests' #'Calypso-Plugins-Reflectivity-Environment-Tests' 'Calypso-Plugins-Critic-Environment-Tests' );
			group: 'default' with: #('FullEnvironment' 'FullBrowser' 'Tests' ). ].
