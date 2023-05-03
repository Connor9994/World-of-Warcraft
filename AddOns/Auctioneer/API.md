# Auctioneer API.

## TL;DR version

If you just want to get some stats quick from Auctioneer, do this and don't bother reading any further, there's surely not anything worth reading further down this page:

```lua
local itemID = 2589 -- Linen Cloth
if Auctioneer and Auctioneer.MajorVersion >= 8 then
  local stats = Auctioneer:Statistics(itemID)
  for _, stat in ipairs(stats) do
    local price, type = stat:Best()
    local number = stat:Number()
    print(format(
      "Got %s %s: %d (%d data points)",
      stat.name, type, price, number
    ))
  end
end
```

## Accessing statistics.

### About itemKeys.

In order to get access to Auctioneer statistics, you will need to know the
itemKey for the item you wish to get the price for.

For normal commodity items, that have no suffix or iLevel you can just get by
with the itemID, however equipment that has random variants it is important
to differentiate them by getting the new itemKey value.

If you're looking at a bag item, you can get the itemKey like this:

```lua
local location = ItemLocation:CreateFromBagAndSlot(additional.eventContainer, additional.eventIndex)
local itemKey = C_AuctionHouse.GetItemKeyFromItem(location)
```

Or for equipment slots:

```lua
local location = ItemLocation:CreateFromEquipmentSlot(additional.eventIndex)
local itemKey = C_AuctionHouse.GetItemKeyFromItem(location)
```

### Auctioneer:Statistics()

To fetch statistics you will call the `Auctioneer:Statistics()` method which
will return an array of `Auctioneer:Stat` items to you.

The method takes a single parameter which can be one of the following:

- `itemID`, number: The itemID as a number.
- `"itemID"`, string: The itemID as a string.
- `"auctioneerKey"`, string: The id that Auctioneer uses as it's stat key.
- `itemKey`, table: The itemKey as returned by the Auction House APIs.

### Auctioneer:Stat

An array of `Auctioneer:Stat` objects are returned by the
`Auctioneer:Statistics()` method (one for each stats module that knows about)
the requested item. It contains methods to retrieve various types of statistics
about itself.

#### Properties:

- `Stat.name`, string: The name of the statistic.
- `Stat.points`, `Points` object: The data points used by the stat.

#### Methods:

- `price, type = Stat:Best()`: Returns the "best" statistic available.<br>
`price` is the price and `type` is the type of the statistic.
- `number = Stat:Number()`: The number of data Points available.
- `price = Stat:Minimum()`: As it says, the minimum data Point price.
- `price = Stat:Maximum()`: As it says, the maximum data Point price.
- `price = Stat:Median(options)`: The median (middle) data Point price.
- `price = Stat:Percentile(percentile, options)`: The data Point price at the
given position in the list.

The `options` table can contain the following keys:

- `weighed`, bool, default=true: Weight more recent stats more heavily.
- `before`, number: Don't consider Points after this value.
- `after`, number: Don't consider Points before this value.

Both before and after are hours since epoch, the current time in fractional
hours can be retrieved with `Auctioneer:Timeslice()`.

