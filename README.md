#Introduction to WoW Addon Development 

Setting up a WoWAddon requires 3 basic files:  *.lua, *.toc, *.xml

Lua:  A programming language.  The guts of what you write goes here.
Toc:  Table of contents file.  It tells WoW what files you made.
Xml:  The WoW interface is built with XML.  This is how you hook into it.  Kinda like how HTML web pages work.

For a good tutorial on what these files mean go to wowwiki: http://www.wowwiki.com/AddOn_programming_tutorial

##Tools

###Install Sublime Text: http://www.sublimetext.com/

####Configure Sublime Text
* Package Control : https://packagecontrol.io/installation
* Open Sublime.  Then open the Command Palette (Ctrl-Shift-P on Windows or COMMAND + SHIFT + P on Mac).  
* Locate "Package Control: Install Package"
* In the second list of packages that appear type "Lua".  Locate and install "Lua Dev".  Now you can hit F7 to build Lua files in sublime.
* Install Fix Mac Path (Mac users only): https://github.com/int3h/SublimeFixMacPath

##Useful Links

###Tutorials

* Interactive API: https://dev.battle.net/io-docs
* Lua Programming: http://luatut.com/introduction.html
* Xml Tutorial: http://www.wowwiki.com/UI_XML_tutorial

* Battle.net forum: http://us.battle.net/en/forum/15051532/