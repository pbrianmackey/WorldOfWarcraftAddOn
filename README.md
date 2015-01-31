#Introduction to WoW Addon Development 

This tutorial shows you what you need to get started building WoW add ons.  I have links to important tutorials.  And I show you a way to setup your environment to speed and ease the development process.  This tutorial is geared towards Mac.  Translating to a PC should be pretty easy to do.  Building AddOns for World of Warcraft requires a few tools and just 3 files:  

* WorldOfWarcraftAddOn.lua
* WorldOfWarcraftAddOn.toc
* WorldOfWarcraftAddOn.xml

The extensions (lua, toc and xml) tell you what type of file it is.  

Lua:  A programming language.  The guts of what you write goes here. <br />
Toc:  Table of contents file.  It tells WoW what files you made.  <br />
Xml:  The WoW interface is built with XML.  This is how you hook into it.  Kinda like how HTML web pages work.<br /><br />

For a good general tutorial on what these files mean go to wowwiki: http://www.wowwiki.com/AddOn_programming_tutorial


You can write World of Warcraft AddOns with notepad.  However, I prefer to use a tool that helps me program.  These tools add keyword highlighting and make it easy and fast to test your program.


##Tools

###Install Sublime Text: http://www.sublimetext.com/

####Configure Sublime Text (Install this stuff too)
* Package Control : https://packagecontrol.io/installation
* Open Sublime.  Then open the Command Palette (Ctrl-Shift-P on Windows or COMMAND + SHIFT + P on Mac).  
* Locate "Package Control: Install Package"
* In the second list of packages that appear type "Lua".  Locate and install "Lua Dev".  Now you can hit F7 to build Lua files in sublime.
* Install Fix Mac Path (Mac users only): https://github.com/int3h/SublimeFixMacPath

##Useful Links

###Getting help / Tutorials

* UI Beginners Guide:  http://www.wowwiki.com/UI_beginner%27s_guide (great tutorial teaching the meaning of Slash, Macros and Scripting languages)
* Lua Programming: http://luatut.com/introduction.html
* Xml Tutorial: http://www.wowwiki.com/UI_XML_tutorial
* Battle.net forum: http://us.battle.net/en/forum/15051532/
* I recommend Pluralsight for a great intro to Lua:  http://www.pluralsight.com/courses/beginning-lua
* Stackoverflow.com : A superior Q&A site for programming questions.

###Extracting the Interface

I felt this section required special attention due to the difficulty in getting it going on a Mac.  Most tutorials say to launch WoW via Terminal:

```
"open /Applications/World\ of\ Warcraft/World\ of\ Warcraft\ Launcher.app --args -console"
```

Then you should be able to access the developer console by hitting the "`" key.  Alternatively, you can open the developer console and extract the interface using:

* Enable the developer console.  Once enabled you simply hit the "`" key to bring it up.
 * Enabling the console on the Mac requires creating a new file called "commandline.txt".  Place the file in /Applications/World Of Warcraft.  Inside the file it should simply have "-console". 
* Launch WoW.  Now tap the "`" key and a block window should display at the top of WoW.
* In the console window type "exportInterfaceFiles code" (no quotes)
 * This will create a new folder:  /Applications/World of Warcraft/BlizzardInterfaceCode

 ![alt text](https://github.com/smacky311/WorldOfWarcraftAddOn/DeveloperConsole.png "Developer Console")

###ADVANCED (These links are not recommended reading when just starting out)

* WoW Lua API:  http://www.wowwiki.com/World_of_Warcraft_API  (Very handy!)
* Reset your interface (I'm sure you won't need this): https://us.battle.net/support/en/article/resetting-the-world-of-warcraft-user-interface
* WoW Interface Addon Kit:  https://us.battle.net/support/en/article/download-the-world-of-warcraft-interface-addon-kit
* Locating Undocumented or Hidden Global Functions ADVANCED (Hidden API calls?): http://www.wowwiki.com/User:Mikk/Scripts
* WoW Specific Lua Functions: http://www.wowwiki.com/Lua_functions
* Widget API: http://www.wowwiki.com/FrameXML (not sure what this is used for)
* XML UI: http://www.wowwiki.com/XML_UI
* Event API: http://www.wowwiki.com/Event_API
* WoW uses a subset of Lua 5.1: http://www.lua.org/manual/5.1/manual.html
   * Also see http://www.wowwiki.com/Lua

###Other

* Interactive API: https://dev.battle.net/io-docs (Requires free signup and approval from Blizzard).  So far I have not found this API to be useful.
