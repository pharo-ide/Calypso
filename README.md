# Calypso
[![Build Status](https://travis-ci.org/dionisiydk/Calypso.svg?branch=master)](https://travis-ci.org/dionisiydk/Calypso)

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

## Installation
```Smalltalk
Metacello new
  baseline: 'Calypso';
  repository: 'github://dionisiydk/Calypso';
  load
```
To make Calypso default toolset evaluate:
```Smalltalk
ClyBrowser beAllDefault
```
And to open browser evaluate: 
```Smalltalk
ClySystemBrowser open.
```

### FAQ

## What is a "Project" (as opposed to a "Package")?
While project mode will become the default view in the future, for now it is more like a stub. 
Some of the current directions are integration with a new package management [Cargo](https://github.com/demarey/cargo) (Christophe is working on it) and a possible Metacello backend.
