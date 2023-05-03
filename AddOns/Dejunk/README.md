# Dejunk

Dejunk is an addon for automating some tedious aspects of selling and
destroying items.

By default, all poor quality items are considered junk items (this setting can
be turned off). Higher quality items must be manually added to an `Inclusions`
list in order to mark them as junk.

Once set up, Dejunk can handle the process of selling or destroying junk items
with the press of a button.

![Dejunk](/.images/Dejunk.png?raw=true)

![Junk Frame](/.images/JunkFrame.png?raw=true)
![Transport Frame](/.images/TransportFrame.png?raw=true)

## Features

- Automate the process of selling junk items at a merchant
- Destroy junk items with the press of a button
- Customize lists of junk items to always sell or destroy (Inclusions)
- Customize lists of junk items to never sell or destroy (Exclusions)
- Set up keybindings or use chat commands for most operations

## Chat Commands

```ps1
# Display help commands.
/dejunk

# Open the key binding frame.
/dejunk keybinds

# Toggle the options frame.
/dejunk options

# Toggle the junk frame.
/dejunk junk

# Toggle the transport frame.
/dejunk transport {inclusions|exclusions} {global|character}

# Start selling items.
/dejunk sell

# Destroy next item.
/dejunk destroy

# Open lootable items.
/dejunk loot
```

## Credit

### Art

- [Cash icon](https://game-icons.net/1x1/lorc/cash.html) by [Lorc](http://lorcblog.blogspot.com/) under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/).
- [FontAwesome](https://fontawesome.com/) under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)

### Libraries

- [CallbackHandler-1.0](https://www.wowace.com/projects/callbackhandler)
- [LibDataBroker-1.1](https://www.wowace.com/projects/libdatabroker-1-1)
- [LibDBIcon-1.0](https://www.wowace.com/projects/libdbicon-1-0)
- [LibStub](https://www.wowace.com/projects/libstub)
