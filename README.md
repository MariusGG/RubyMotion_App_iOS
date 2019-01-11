# RubyMotion_App_iOS

Learning to write cross-platform apps for iOS, Android and OS X in Ruby. RubyMotion lets you write native iOS apps in Ruby, it's Ruby on top of Objective C Runtime. I will use Rake which is Ruby's de-facto build system, which will then deploy the app in a simulator.

# Minimum Requirements
The minimum requirements to use this template are XCode 9.2 and RubyMotion 5.0.

Keep in mind that if you've recently upgraded from a previous versions of XCode or RubyMotion, you'll want to run rake clean:all as opposed to just rake clean.

# Build
To build using the default simulator, run: rake (alias rake simulator).

To run on a specific type of simulator. You can run rake simulator device_name="SIMULATOR". Here is a list of simulators available:

rake simulator device_name='iPhone 5s'
rake simulator device_name='iPhone 8 Plus'
rake simulator device_name='iPhone 8 Plus'
rake simulator device_name='iPhone X'
rake simulator device_name='iPad Pro (9.7-inch)'
rake simulator device_name='iPad Pro (10.5-inch)'
rake simulator device_name='iPad Pro (12.9-inch)'
Consider using https://github.com/KrauseFx/xcode-install (and other parts of FastLane) to streamline management of simulators, certificates, and pretty much everything else.

So, for example, you can run rake simulator device_name='iPhone X' to see what your app would look like on iPhone X.
