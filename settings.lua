if mods["item-nicknames"] then
  require("__item-nicknames__/pack-settings").register("example", {
    default = require("pack-definitions"),
    order = "pack-example",
  })
end
