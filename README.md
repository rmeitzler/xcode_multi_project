# xcode_multi_project

This repo includes a single workspace containing 2 iPhone app projects (‘CommonProject1’ & ‘CommonProj2’), 1 playground, & 1 swift framework. The framework contains 2 targets ‘LoopCommon’ & ‘LoopCommonUI’.

The idea is that each of the apps can use the frameworks as they see fit.
Changes to the frameworks are immediately reflected in the apps each time and app is built. 

The LoopCommonUI framework includes a storyboard & a view controller for a Login screen. The Login view controller has IBOutlets set for it’s textfields. It also has 2 closures defined as properties. These closures can be used to get data in and out of the main app from the framework view. This will allow the framework code to remain largely static while still being flexible enough to support whatever functionality the main app should require.


CommonProject1 uses the LoopCommon framework.
CommonProject2 uses the LoopCommon & LoopCommonUI frameworks.

