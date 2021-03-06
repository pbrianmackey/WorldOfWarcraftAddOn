#Introduction to WoW Addon Development 

This tutorial shows you what you need to get started building WoW add ons.  Building AddOns for World of Warcraft requires a few tools and just 3 files:  

* WorldOfWarcraftAddOn.lua
* WorldOfWarcraftAddOn.toc
* WorldOfWarcraftAddOn.xml

To run this simple "Hello World" example copy the 3 files in the beginner folder on Git to /Applications/WorldOfWarcraft/Interface/AddOns/WorldOfWarcraftAddOn (case sensitive).  Then launch WoW.  The AddOn simply displays the words "Hello World!" in the chat window.  Thats it!

####Rake

Once you feel comfortable, go ahead and clone this repository.  At the terminal the command:

* "rake buildb" deploys the beginner files to your local WoW directory (Mac only).
* "rake buildi" deploys the intermediate files to your local WoW directory (Mac only).

##About

This program is based off a wowwiki tutorial.  For a in depth tutorial of how this program works go to wowwiki: http://www.wowwiki.com/AddOn_programming_tutorial

The 3 file extensions (lua, toc and xml) tell you what type of file it is.  

Lua:  A programming language.  The guts of what you write goes here. <br />
Toc:  Table of contents file.  It tells WoW what files you made.  <br />
Xml:  The WoW interface is built with XML.  This is how you hook into it.  Kinda like how HTML web pages work.

You can write World of Warcraft AddOns with notepad.  However, I prefer to use a tool that helps me program.  These tools add keyword highlighting and make it easy and fast to test your program.

Below you will find links to further your learning.  I also show you how I setup my development environment to speed and ease the development process.  This tutorial is geared towards Mac.  This tutorial is current as of Warlords of Draenor.  Translating to a PC should be pretty easy to do, but I'm happy to have someone edit in the details :).

Currently, the beginner course (see beginner folder) is complete.  An intermediate and advanced course are in the works.

##Tools

###Install Sublime Text: http://www.sublimetext.com/

####Configure Sublime Text (Install this stuff too)
* Package Control : https://packagecontrol.io/installation
* Open Sublime.  Then open the Command Palette (Ctrl-Shift-P on Windows or COMMAND + SHIFT + P on Mac).  
* Locate "Package Control: Install Package"
* In the second list of packages that appear type "Lua".  Locate and install "Lua Dev".  Now you can hit F7 to build Lua files in sublime.
* Install Fix Mac Path (Mac users only): https://github.com/int3h/SublimeFixMacPath

###Reload UI

/reload (slash command available in game chat window).  Useful for reloading the AddOn as you make updates.

##Useful Links

####Getting help / Tutorials

* UI Beginners Guide:  http://www.wowwiki.com/UI_beginner%27s_guide (great tutorial teaching the meaning of Slash, Macros and Scripting languages)
* World of Warcraft AddOn Programming: http://www.amazon.com/World-Warcraft-Programming-Reference-Creating/dp/0470481285/ref=sr_1_1?ie=UTF8&qid=1423323837&sr=8-1&keywords=world+of+warcraft+programming
* Lua Programming: http://luatut.com/introduction.html
* WoW Lua AddOn: http://www.curse.com/addons/wow/wowlua
* Xml Tutorial: http://www.wowwiki.com/UI_XML_tutorial
* Battle.net forum: http://us.battle.net/wow/en/forum/1011693/
* I recommend Pluralsight for a great intro to Lua:  http://www.pluralsight.com/courses/beginning-lua
* Stackoverflow.com : A superior Q&A site for programming questions.
* wowxml.md : My interpretation of how WoW treats XML
* wowgeneral.md : Personal Research notes.

##ADVANCED (Wait until you get a grip on the basics before you hit these)

* WoW Lua API:  http://www.wowwiki.com/World_of_Warcraft_API  (Very handy!)
* Reset your interface (I'm sure you won't need this): https://us.battle.net/support/en/article/resetting-the-world-of-warcraft-user-interface
* WoW Interface Addon Kit:  https://us.battle.net/support/en/article/download-the-world-of-warcraft-interface-addon-kit
* Locating Undocumented or Hidden Global Functions ADVANCED (Hidden API calls?): http://www.wowwiki.com/User:Mikk/Scripts
* WoW Specific Lua Functions: http://www.wowwiki.com/Lua_functions
* Widget API: http://www.wowwiki.com/Widget_API (Widgets are buttons, checkboxes..stuff you can interact with)
* FrameXML: http://www.wowwiki.com/FrameXML (FrameXML is the part of Blizzards user interface that can be overridden by AddOn developers)
* XML UI: http://www.wowwiki.com/XML_UI
* Event API: http://www.wowwiki.com/Event_API
* WoW uses a subset of Lua 5.1: http://www.lua.org/manual/5.1/manual.html
   * Also see http://www.wowwiki.com/Lua

####Extracting the Interface

I felt this section required special attention due to the difficulty in getting it going on a Mac.  Most tutorials say to launch WoW via Terminal:

```
"open /Applications/World\ of\ Warcraft/World\ of\ Warcraft\ Launcher.app --args -console"
```

Then you should be able to access the developer console by hitting the "`" key.  Alternatively, you can open the developer console and extract the interface using:

* Enable the developer console.  Once enabled you simply hit the "`" key to bring it up.
 * Enabling the console on the Mac requires creating a new file called "commandline.txt".  Place the file in /Applications/World Of Warcraft.  Inside the file it should simply have "-console". 
* Launch WoW.  Now tap the "`" key and a block window should display at the top of WoW.
 ![alt text](https://github.com/smacky311/WorldOfWarcraftAddOn/blob/master/DeveloperConsole.png "Developer Console")
* In the console window type "exportInterfaceFiles code" (no quotes).  **You must be logged out of the game for this to work**
 * This will create a new folder:  /Applications/World of Warcraft/BlizzardInterfaceCode

###Other

* Interactive API: https://dev.battle.net/io-docs (requires free signup and approval from Blizzard).  So far I have not found this API to be useful.
