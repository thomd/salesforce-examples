# Search Objects and Fields

This is a Lightning Component to list all objects that are present in an Org and when selecting a particular object all the respective fields appear.

It contains the following concepts:

* Lightning web Component (Aura)
* Lightning App
* System Debug Log

## Setup

Login into a DevHub enabled org, e.g. a Trailhead playground:

    sfdx auth:web:login -d -a myDevHub
    git clone https://github.com/thomd/salesforce-examples.git
    cd salesforce-examples/show-all-objects-and-fields
    npm install

Create a scratch org and deploy:

    sfdx force:org:create -f config/project-scratch-def.json -s -a myScratch -v myDevHub
    sfdx force:source:deploy -x manifest/package.xml
    sfdx force:org:open

## Create a Lightning App

1. Go to `Setup > Apps > App Manager` and click on `New Lightning App`
1. Enter app name **Objects and Fields**
1. Click three times `Next`
1. In step **User Profiles**, select `System Administrator`
1. Click `Save and Finish`
1. On right-dropdown, select `Edit` to enter Lightning App Builder
1. From top navigation, select `Pages > New Page`
1. Select `App Page` and click `Next`
1. Enter label **Show Objects and Fields** and click `Next`
1. Select `One Region` and click `Next`
1. Drag-Drop custom component **FetchObjects** into app canvas
1. Click top-right `Save`
1. In modal, click on `Activate`
1. Select tab `LIGHTNING EXPERIENCE`
1. Select on left list the `Objects and Fields` app, then click on right button `Add page to app`
1. Click on `Save`

## Open App

Open `Objects and Fields` from App Launcher

