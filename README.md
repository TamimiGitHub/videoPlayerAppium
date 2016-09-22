Prerequisites
================
1. Appium Server installed on machine
2. Clone this repo to your machine
3. iOS device (iPad or iOS)

Steps
================

To run the script on a device please follow the following steps

1. Run the Appium server in a terminal
2. Modify the caps in the `./ios/spec/Smoke_spec.rb` and the `appium.txt`
	* Change the youiEngineAppAddress to match the ip address of your deivce 
	* Change the udid to include the devices udid. This can be obtained from `instruments -s`
3. Connect your iOS device to your machine
4. Run the script by typing `rspec Smoke_spec.rb`  

To-Do
================
- [x] Integrate Rspec
- [x] Potentials to having the the `Smoke.rb` as the `Smoke_spec.rb` file
- [x] All "RunTests" and methods called in the smoke are to be "describe"ed and "it" for execution 
- [x] Possibly having the "spec_helper" as part of the `Smoke_spec.rb` file or adding a seperate file that instantiates rspec, Appium and promotes them
- [x] Once that is implemetned, the script execution will be modifed from `ruby Smoke.rb` to `rspec Smoke_spec.rb`
- [x] More to be added here for our August Engineering All Hands deliverable

Please Note that this repo is depreciated as source code is being modified in Eclipse dir. Eventually more work will be done in the Eclipse repp
