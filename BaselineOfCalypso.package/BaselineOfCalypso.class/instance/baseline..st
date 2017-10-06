baselines
baseline: spec
   <baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'Commander' with: [
				spec repository: 'github://dionisiydk/Commander:dev' ];
			baseline: 'SystemCommands' with: [
				spec repository: 'github://dionisiydk/SystemCommands:calypsoEnvironmentRefactoring' ].			
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
			
			package: #'Calypso-Environment-Processor' with: [
				spec requires: #(#'Calypso-Environment-System')];
			package: #'Calypso-Environment-Processor-Tests' with: [
				spec requires: #(#'Calypso-Environment-Processor')];
			
			package: #'Calypso-Plugins-Critic-Browser' with: [
				spec requires: #(#'Calypso-SystemTools-FullBrowser' #'Calypso-Plugins-Critic-Environment' ). ];
			package: #'Calypso-Plugins-Critic-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: 'Calypso-Plugins-Critic-Environment-Tests' with: [
				spec requires: #(#'Calypso-Plugins-Critic-Environment' #'Calypso-Environment-System-Tests' ). ];
			package: #'Calypso-Plugins-Deprecation-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Deprecation-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			package: #'Calypso-Plugins-Deprecation-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Deprecation-Environment-Tests' with: [
				spec requires: #(#'Calypso-Plugins-Deprecation-Environment' ). ];
			package: #'Calypso-Plugins-FileOut-Browser' with: [
				spec requires: #(#'Calypso-Plugins-FileOut-Environment' #'Calypso-SystemTools-Core' ). ];
			package: #'Calypso-Plugins-FileOut-Environment';
			package: 'Calypso-Plugins-InheritanceAnalyzer-Browser' with: [
				spec requires: #('Calypso-Plugins-InheritanceAnalyzer-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			package: 'Calypso-Plugins-InheritanceAnalyzer-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: 'Calypso-Plugins-InheritanceAnalyzer-Environment-Tests' with: [
				spec requires: #('Calypso-Plugins-InheritanceAnalyzer-Environment' ). ];
			package: #'Calypso-Plugins-MethodDiffTool' with: [
				spec requires: #(#'Calypso-SystemTools-Core' ). ];
			package: #'Calypso-Plugins-Monticello-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Monticello-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			package: #'Calypso-Plugins-Monticello-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Nautilus-Browser' with: [
				spec requires: #(#'Calypso-SystemTools-Core' ). ];
			package: #'Calypso-Plugins-Reflectivity-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Reflectivity-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			package: #'Calypso-Plugins-Reflectivity-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Reflectivity-Environment-Tests' with: [
				spec requires: #(#'Calypso-Environment-System-Tests' #'Calypso-Plugins-Reflectivity-Environment' ). ];
			package: #'Calypso-Plugins-SUnit-Browser' with: [
				spec requires: #(#'Calypso-Plugins-SUnit-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			package: #'Calypso-Plugins-SUnit-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			
			package: #'Calypso-Plugins-Undeclared-Environment' with: [
				spec requires: #(#'Calypso-Environment-System' ). ];
			package: #'Calypso-Plugins-Undeclared-Environment-Tests' with: [
				spec requires: #(#'Calypso-Environment-System-Tests' #'Calypso-Plugins-Undeclared-Environment' ). ];
			package: #'Calypso-Plugins-Undeclared-Browser' with: [
				spec requires: #(#'Calypso-Plugins-Undeclared-Environment' #'Calypso-SystemTools-FullBrowser' ). ];
			
			
			package: #'Calypso-SystemTools-Core' with: [
				spec requires: #(#'Calypso-Environment' 'Commander' ). ];

			package: #'Calypso-SystemTools-Core' with: [
				spec requires: #(#'Calypso-Environment-System' #'Calypso-Tools-CoreBrowser' 'SystemCommands' ). ];
			
			package: #'Calypso-SystemTools-FullBrowser' with: [
				spec requires: #(#'Calypso-SystemTools-Core' ). ];
			package: #'Calypso-SystemTools-FullBrowser-Tests' with: [
				spec requires: #(#'Calypso-SystemTools-FullBrowser' ). ];
			
			package: #'Calypso-SystemTools-QueryBrowser' with: [
				spec requires: #(#'Calypso-SystemTools-FullBrowser' ). ];
			package: #'Calypso-SystemTools-QueryBrowser-Tests' with: [
				spec requires: #(#'Calypso-SystemTools-QueryBrowser' #'Calypso-SystemTools-FullBrowser-Tests' ). ];		
			
			package: #'Calypso-SystemTools-OldToolCompatibillity' with: [
				spec requires: #(#'Calypso-SystemTools-QueryBrowser' ). ];

			package: #'Calypso-SystemTools-Debugger' with: [
				spec requires: #(#'Calypso-Environment-Processor' #'Calypso-SystemTools-QueryBrowser' ). ];
			
			package: #'Calypso-SystemTools-ProcessBrowser' with: [
				spec requires: #(#'Calypso-Environment-Processor' #'Calypso-SystemTools-Debugger' ). ].


		spec 
			group: 'Browser' with: #(#'Calypso-SystemTools-FullBrowser' #'Calypso-SystemTools-QueryBrowser' 'Calypso-SystemTools-ProcessBrowser');
			group: 'Core' with: #('Environment' 'Browser' );
			group: 'Environment' with: #(#'Calypso-Environment-System' #'Calypso-Environment-Core' #'Calypso-Environment-Processor' );
			group: 'FullBrowser' with: #('Browser' #'Calypso-Plugins-Monticello-Browser' #'Calypso-Plugins-SUnit-Browser' #'Calypso-Plugins-Nautilus-Browser' #'Calypso-SystemTools-OldToolCompatibillity' #'Calypso-Plugins-Critic-Browser' 'Calypso-Plugins-InheritanceAnalyzer-Browser' #'Calypso-Plugins-FileOut-Browser' #'Calypso-Plugins-MethodDiffTool' #'Calypso-Plugins-Deprecation-Browser' #'Calypso-Plugins-Reflectivity-Browser' #'Calypso-Plugins-Undeclared-Browser');
			group: 'FullEnvironment' with: #(#'Calypso-Plugins-Monticello-Environment' #'Calypso-Plugins-SUnit-Environment' 'Environment' 'Calypso-Plugins-InheritanceAnalyzer-Environment' #'Calypso-Plugins-FileOut-Environment' #'Calypso-Plugins-Deprecation-Environment' #'Calypso-Plugins-Reflectivity-Environment' #'Calypso-Plugins-Critic-Environment' #'Calypso-Plugins-Undeclared-Environment' );
			group: 'Tests' with: #(#'Calypso-Environment-System-Tests' #'Calypso-Environment-Processor-Tests' #'Calypso-SystemTools-FullBrowser-Tests' #'Calypso-SystemTools-QueryBrowser-Tests' 'Calypso-Plugins-InheritanceAnalyzer-Environment-Tests' #'Calypso-Plugins-Deprecation-Environment-Tests' #'Calypso-Plugins-Reflectivity-Environment-Tests' 'Calypso-Plugins-Critic-Environment-Tests' 'Calypso-Plugins-Undeclared-Environment-Tests');
			group: 'default' with: #('FullEnvironment' 'FullBrowser' 'Tests' ). ].
