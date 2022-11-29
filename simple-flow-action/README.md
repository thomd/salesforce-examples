# Simple Flow Action

This example is based on the Trail [Create a Custom Flow Action | Developer Quick Takes](https://www.youtube.com/watch?v=lHpqQQDpV8o) and contains the following concepts:

* Flow Builder
* Flow Action
* Apex Class

## Setup

Login into a DevHub enabled org, e.g. a Trailhead playground:

    sfdx auth:web:login -d -a myDevHub
    cd simple-flow-action

Create a scratch org and deploy:

    sfdx force:org:create -f config/project-scratch-def.json -s -a myScratch -v myDevHub
    sfdx force:source:deploy -x manifest/package.xml
    sfdx force:org:open

Open Flow Builder: `Setup > Process Automation > Flows > New Contact`
