##WoW XML

*For a complete introduction read*:  http://www.wowwiki.com/UI_XML_tutorial

There are two main types of elements that appear in the UI XML files. The first type are those that declare user interface items (or widgets), such as Buttons, Frames, Checkboxes. We will call these widget elements. The second type of element, which always occur inside the first type, define properties and behaviour of the widgets. We will call these property elements. Here is an example:

Widgets:   Things you can interact with. <br />
Elements:  Further define widgets.

Example of a Button Widget with an Anchor Element
```xml
<Button name="MyAddon_Button">
  <Anchors>
    <Anchor point="CENTER"/>
  </Anchors>
</Button>
```

Widgets can be nested within other widgets.  

Example of complete and valid XML file (only one UI element is allowed).  This creates a single Frame called "MyAddon_Frame". The Frame does not display and has no content.

```xml
<Ui xmlns="http://www.blizzard.com/wow/ui/"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://www.blizzard.com/wow/ui/ ..\FrameXML\UI.xsd">
   <Frame name="MyAddon_Frame">
   </Frame>
</Ui>
```

####XSD Validation:  

xmllint:  xmllint --noout --schema /Applications/World\ of\ Warcraft/BlizzardInterfaceCode/Interface/FrameXML/UI.xsd /mypath/WorldOfWarcraftAddOn.xml <br />
Consider Xerces: http://xerces.apache.org/mirrors.cgi

####XML => Lua Binding:

There is a binding that occurs between Lua and Xml.  It's a lot like ASP.NET where you have a view and a code behind page.

Every widget element may have the name attribute. If an element has a name, it causes a **global** Lua variable to be created with that name. This variable can then be used to call API methods on that widget.

I can now make a call to that frame we created earlier from Lua:  

```lua
MyAddon_Frame:Show()
```

####$parent string

$parent can be used as a convention to show relationships:

```xml
<Frame name="MyAddon_Frame">
 ..
 <Frames>
  <Button name="$parent_Button">
  ..
  </Button>
 </Frames>
</Frame>
```

This results in two global Lua variables: MyAddon_Frame and MyAddon_Frame_Button.


####Layers and Textures

There are 5 levels of layers.  3 are widely used:  Background, Artwork , Overlay

BACKGROUND - Level 0. Place the background of your frame here.<br />
BORDER - Level 1. Place the border art of your frame here .<br />
ARTWORK - Level 2. Place the artwork of your frame here.<br />
OVERLAY - Level 3. Place your text, objects, and buttons in this level<br />
HIGHLIGHT - Level 4. Place your text, objects, and buttons in this level<br />

Elements in the HIGHLIGHT Layer are automatically shown or hidden when the mouse enters or leaves!
For Highlighting to work you need enableMouse="true" in your <Frame> attributes.

####Templates

Templates are a form of inheritance. Templates are used when you want to create a common layout for several frames.

```xml
<Button name="MyAddonButtonTemplate" parent="UIParent" virtual="true">
     <ButtonText name="$parentText"/>
</Button>
<Button name="MyAddonSpecialButton" inherits="MyAddonButtonTemplate">
     <Size><AbsDimension x="40" y="22"/></Size>
</Button>
```
Is the same as doing:

```xml
<Button name="MyAddonSpecialButton" parent="UIParent">
     <Size><AbsDimension x="40" y="22"/></Size>
     <ButtonText name="MyAddonSpecialButtonText"/>
</Button>
```

* Templates are created at the root of the file. Meaning that you cannot have a template that is a child of another element
* However, Templates can inherit other templates. 
* Templates must have their virtual attributes set to true
* Templates must have a name, and it cannot use the $parent keyword
* Children of a template do not need to be named, but when doing so, you should use the $parent keyword
* Any inherited attributes, properties, or children can also be overridden. 

####Scripts

Scripts can be added to the XML directly or via a file reference.

```xml
<Ui ... >
 <Script file="mycode.lua"/>
 <Frame name="MyFrame">
  ...
 </Frame>
</Ui>
```

Functions defined in mycode.lua are available to later scripts.  Earlier defined scripts cannot see functions defined in mycode.lua.


####Best Practices

It is recommended that you prefix the names of all of your functions, UI objects and global variables with the name of your AddOn like above; all data is shared between Blizzard's own UI and all your addons, so picking a unique prefix helps avoid clashes with other people's code.