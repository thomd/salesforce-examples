# Theme Layout with Custom Search and Navigation

This example is based on the Trail [Build a Custom Theme Layout Component for Experience Builder Sites](https://trailhead.salesforce.com/de/content/learn/projects/communities_theme_layout) and contains the following features:

* Experience Cloud Site
* Theme Layout as Aura Lightning Component
* Custom Search

## Setup

    cd aura-theme-layout-with-custom-search
    npm install

  login into a DevHub enabled Org, e.g. a Trailhead playground

    sfdx auth:web:login
    sfdx force:org:create -f config/project-scratch-def.json -d 1 -a myScratch
    sfdx force:source:deploy -x manifest/package.xml
    sfdx force:org:open -u MyScratch
    sfdx force:org:delete -u MyScratch

## Apply Theme to a Page

1. Open `Experience Builder > Settings > Theme`
    1. Click `Configure` tab
    1. Click on `New Theme Layout` button
    1. Enter **name**, e.g. `MyThemeLayout`
    1. Select **My Theme Layout**
    1. Click on `Gear Icon` and adjust layout properties
1. Click on top `Pages` dropdown
    1. Select a page or create a new page using the bottom `+ New Page` button
    1. Click on page properties (`Gear Icon`)
    1. Select `Override the default theme layout for this page` in **Layout** section
    1. Select new layout, e.g. `MyThemeLayout`

## TODO

[ ] Test Controller
