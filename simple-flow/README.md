# Simple Flow

This example is based on the Trail [Build a Simple Flow](https://trailhead.salesforce.com/content/learn/projects/build-a-simple-flow) and contains the following concepts:

* Flow Builder

## Setup

Login into a DevHub enabled org, e.g. a Trailhead playground:

    sfdx auth:web:login -d -a myDevHub
    cd simple-flow

Create a scratch org and deploy:

    sfdx force:org:create -f config/project-scratch-def.json -s -a myScratch -v myDevHub
    sfdx force:source:deploy -x manifest/package.xml
    sfdx force:org:open

Open Flow Builder: `Setup > Process Automation > Flows > New Contact`
