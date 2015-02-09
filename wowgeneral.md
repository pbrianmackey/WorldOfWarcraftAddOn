####Blizzard includes a number of addons that they wrote in the AddOns directory.

####Create a character on an unused server so you can test addons


####Slash commands

```lua
  SLASH_HEYTHERE1 = “/hey“
  SLASH_HEYTHERE2 = “/heythere“
  SlashCmdList[“HEYTHERE“] = function(self, txt)
￼if UnitExists(“target“) then
￼￼￼￼￼￼Chapter 1 ■ Programming for World of Warcraft 11
￼      SendChatMessage(“Hello “ .. UnitName(“target“), “SAY“)
    else
      SendChatMessage(“Hey there everybody!“)
    end
end
```

You can type either /heythere or simply /hey and depending on whether
you have something targeted your character will display one of two messages

In the Lua interpreter, each individual line you type is its own chunk, unless youwrapitinablock(suchastheprecedingdo... endblock).Forthisreason, the following code will not work:

```lua
  > local i = 10
  > print(i)
  nil
```

###Functions

When a function is called, it can be passed any number of arguments to be used
throughout the body of the function. In addition, a function may return any number of values when it completes.

Functions are first-class functions.  In other words, functions can be compared and passed around like variables.

###Random

nil can’t be part of an arithmetic expression

###repeat - variant of while (similar to do/while) always executed at least once.

```lua
repeat
    -- body
  until <boolean expression>
  ```

  ###for loop syntax

  ```lua
  for variablename = start_value, end_value, step_value do -- body
  end
  ```

###Tables - Tables are a combination of a hashtable and an array.

```lua
#### creation syntax
alice = {} # any value can be used as a key (except nil)
alice[“name“] = “Alice Inchina“
alice[“phone“] = “+1-999-555-1234“
alice.name = "Alice Inchina"# alternative syntax (has a few character restrictions)

#### creation syntax type 2
alice = {
          [“name“] = “Alice Inchina“,
          [“phone“] = “+1-999-555-1234“,

#### creation syntax type 3 (arrays).  Requires numeric value starting at 1.  Gets access to special set of functions
tbl = {
    value1,
    value2,
    value3,
    ...
}
# OR

tbl = {
    [1] = value1,
    [2] = value2,
    [3] = value3,
    ...
}

table.insert(tbl, 3, “zeta“) #position is optional
value = table.remove(tbl [, pos]) #position is optional
table.sort(tbl [, comp])
```

####Namespaces are created using tables.

###Object Oriented code

In OO data is described as objects, which contain methods, special functions that act directly on
or through that object

```lua
-- Create a new scope for local variables
do
    -- Create a counter that cannot be accessed outside this scope
    local counter = 0

    -- Global functions to interact with counter
    function counter_get()
        return counter
    end
    function counter_inc()
        counter = counter + 1
    end
end
```

###Table syntax

```lua
    counter = {
      count = 0
    }

    function counter.get(self)
￼    return self.count
    end

    function counter.inc(self)
    self.count = self.count + 1
end
```

####Call the above via print(counter.get(counter))


###Simplified Table syntax

```lua
counter2 = {
count = 15,
get = counter.get,
inc = counter.inc,
}
```

####Call the above via print(counter2.get(counter2))


####Syntactic Sugar ":"

counter.get(counter) is the same as writing counter:get()

#### ":" in functions

```lua
function counter:get()
    return self.count
end
```

Is roughly equivalent to

```lua
function counter.get(self)
    return self.count
end
```

####Factory functions

```lua
-- Create a new scope for local variables
do
    local function get(self)
      return self.count
    end

    local function inc(self)
        self.count = self.count + 1
    end

    function new_counter(value)
        if type(value) ~= “number“ then
            value = 0
        end

       local obj = {
            count = value,
            get = get,
            inc = inc,
        }

        return obj
    end
end
```

####Metatables

A metatable is nothing more than a table used to store extra information about the tables to which it is attached.
They appear to be similar to inheritance.  A metamethod is a special type of table beginning with two underscores.

E.G. __tostring.  Lua evidently provides a list:  http://www.lua.org/
Ex2  ___add.  Used when you apply "+" to two tables.

setmetatable(tableToAlter, metaTableToAttach);


