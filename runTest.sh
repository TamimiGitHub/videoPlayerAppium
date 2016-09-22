#!/bin/bash

#Project specific variables
#Post to Slack
slackTeam="T02E1HLSR/B20RTAQ2J/vVlix33NvB5C6HRMH6Q2VdeR"
slackChannel="#eclipse-integration"
reportFile="/TestResults/TestRun.json"
reportTitle="Core Video Player"
#spec file name
specFileName="navigation_spec.rb"


#Init variables
getPlatformFolder=false
platformFolder="none"

# Check for command parameters
for var in "$@"
do
    if [ "$var" == "-h" ] || [ "$var" == "--help" ]; then
        echo "Run Appium tests"
        echo ""
        echo "Options"
        echo "  -p          Set name of Platform Folder"
        exit 0;
    elif [ "$var" == "-p" ]; then
        getPlatformFolder=true
    else
      if [ $getPlatformFolder == true ]; then
        platformFolder=$var
        getPlatformFolder=false
      else
        echo "unknown argument = $platformFolder"
      fi
    fi
done

if [ "$platformFolder" == "none" ]; then
  echo "platformFolder must be defined!"
  echo "Type 'runTest.sh -h' for help"
  exit
fi


function setup {
  echo "setup:"
  #Killing on node processes since Appium runs as a Node process
  echo "Killing any process running Appium"
  killall node .../appium
}

function start_server {
  echo "start_server:"
  echo "Starting the Appium Server"
  osascript -e 'tell application "Terminal" to do script "appium"'
}

function run_tests {
  #Sleep to let Appium Server time to start
  sleep 3
  echo "run_tests:"
  cd platforms/$platformFolder
  #rspec ../../spec/$specFileName #--format j --out ./TestResults/TestRun.json
  rspec ../../spec/.
 	sleep 1
}

function post_to_slack {
	echo "post_to_slack:"
  echo "Posting results to Slack"
 	ruby ../../../yi_post_to_slack/lib/yi_post_to_slack.rb $slackTeam $slackChannel $reportFile "$reportTitle" $platformFolder
}

function cleanup {
  echo "cleanup:"
  echo "Killing any process running Appium"
  killall node .../appium
}

setup
start_server
run_tests
#post_to_slack
cleanup
