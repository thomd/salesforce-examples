# Theme Layout with Custom Search and Navigation

This example is based on the Trail [Build a Custom Theme Layout Component for Experience Builder Sites](https://trailhead.salesforce.com/de/content/learn/projects/communities_theme_layout) and contains the following features:

* Experience Cloud Site
* Theme Layout as Aura Lightning Component
* Custom Search

## Setup

Login into a DevHub enabled org, e.g. a Trailhead playground:

    sfdx auth:web:login -d -a myDevHub
    cd aura-theme-layout-with-custom-search

Create a scratch org and deploy:

    sfdx force:org:create -f config/project-scratch-def.json -s -a myScratch -v myDevHub
    sfdx force:source:deploy -x manifest/package.xml
    sfdx force:org:open

Enable experience cloud in scratch org: `Setup > Feature Settings > Digital Experiences > Settings`.

Create new site using the `Build Your Own (Aura)` template. Then activate site in `Administration > Settings` and open `Builder`.

## Apply Theme to a Page

Configure the new theme:

1. Open `Experience Builder > Settings > Theme`
1. Click `Configure` tab
1. Click on `New Theme Layout` button
1. Enter **name**, e.g. `CondensedThemeLayout`
1. Select **Condensed Theme Layout**
1. Click on `Gear Icon` and select `Cloud Kicks Search` as **Search Component**

Assign theme to a page:

1. Click on top `Pages` dropdown
1. Select a page or create a new page using the bottom `+ New Page` button
1. Click on page properties (`Gear Icon`)
1. Select `Override the default theme layout for this page` in **Layout** section
1. Select new layout, e.g. `CondensedThemeLayout`

Create new page for search results:

1. Click on top `Pages` dropdown
1. Create a new page using the bottom `+ New Page` button
1. Select **Standard Page**
1. Click on `+ New Blank Page`
1. Select **Flexible Layout**
1. Enter name `Custom Search Results`

Publish the site.
