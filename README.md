# Calypso
Pharo system browser

- new navigation model
- fast table for UI
- tabs toolbar instead of single source code panel
  - separate tools in tabs to create/edit methods/classes
- explicit commands instead of duplicated menu and shortcuts 
- extendable by plugins
- suitable for remote scenario
- new features:
  - method group view instead of protocols view
      - "dynamic protocols"
      - based on method tags as symbols
      - support multiple tags per method
      - not required star convention for class extension
  - package view is based on class groups
      - "dynamic protocols" for classes
      - based on class tags as symbols
      - support multiple tags per class
  - visibility option for inherited methods
  - methods inherited from traits are not shown by default
  - variable view as special mode for method group view.  
  - and more

Source code is currently on smalltalkhub repo http://smalltalkhub.com/#!/~Pharo/Calypso. Here I want to manage todo, collect issues and missing features.

Now Calypso depends on few fixes which are waiting integration into Pharo 6. Use following script to load all them together:




    Gofer it
     smalltalkhubUser: 'Pharo' project: 'Pharo60Inbox';
     version: 'SLICE-Issue-19486-TabMorph-helper-method-to-prevent-blinking-when-morph-retrieval-is-too-fast-DenisKudryashov.1';
     version: 'SLICE-Issue-19495-TabMorph-should-fork-morph-building-in-lesser-priority-than-active-process-DenisKudryashov.1';
     version: 'SLICE-Issue-19490-ClassAdded-should-be-announcer-after-notifying-superclass-about-new-subclass-DenisKudryashov.1';
     version: 'SLICE-Issue-19491-ClassRemoved-announced-when-it-is-not-removed-from-superclass-subclasses-list-DenisKudryashov.3';
     version: 'SLICE-Issue-19494-ClassModificationApplied-is-not-announced-when-traitComposition-of-class-or-trait-is-changed-DenisKudryashov.1';
     merge.
  
    Gofer it
     smalltalkhubUser: 'Pharo' project: 'Calypso';
     configuration;
     loadStable.

And to open browser evaluate: 

    
    ClySystemBrowser open.



