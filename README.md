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

Source code is currently on smalltalkhub repo http://smalltalkhub.com/#!/~Pharo/Calypso/settings. 
Here I want to manage todo, collect issues and missing features
