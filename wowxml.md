##WoW XML

There are two main types of elements that appear in the UI XML files. The first type are those that declare user interface items (or widgets), such as Buttons, Frames, Checkboxes. We will call these widget elements. The second type of element, which always occur inside the first type, define properties and behaviour of the widgets. We will call these property elements. Here is an example:

Widgets:   Things you can interact with.
Elements:  Further define widgets.

Example:
```xml
<Button name="MyAddon_Button">
  <Anchors>
    <Anchor point="CENTER"/>
  </Anchors>
</Button>
```