#Introduction to WoW Addon Development 

Building AddOns for World of Warcraft requires a few tools and just 3 files:  

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

* Interactive API: https://dev.battle.net/io-docs
* Lua Programming: http://luatut.com/introduction.html
* Xml Tutorial: http://www.wowwiki.com/UI_XML_tutorial

* Battle.net forum: http://us.battle.net/en/forum/15051532/

* I recommend Pluralsight for a great intro to Lua:  http://www.pluralsight.com/courses/beginning-lua