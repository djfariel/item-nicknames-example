# Frequently asked questions

## Do I need Item Nicknames?

Yes. This mod only registers a nickname pack. Without the core mod enabled, it does nothing.

## Is Space Age required?

No. The pack includes some Space Age rows. If Space Age is not loaded, those rows simply do not match any prototype and are skipped.

## Will this overwrite my own nicknames?

No. Example pack tokens merge with **Custom Nicknames** from the core mod. Your personal entries stay unless you edit or clear them yourself.

## How do I turn off the example list only?

Clear **Example nicknames** in **Mod settings → Startup**, or open the pack in the editor, remove or disable rows, export, paste back into that setting, and restart. Alternatively, just disable this mod.

## Does Allow mod nicknames affect this pack?

No. **Allow mod nicknames** only controls the programmatic API on the core mod. Nickname packs always apply when their startup setting has content.

## Can I edit the shipped list?

Yes. Use the in-game pack editor or change the default in the mod files if you maintain a fork. After editing in-game, paste the exported IN1 string into the startup setting and restart.

## Why restart after changing the pack?

Same as the core mod: prototype names are fixed at load time from startup settings.

## Can I use this on a server?

Yes. Startup settings are part of the save. Everyone gets the same applied pack after the host updates the setting and the game restarts.

## Search still does not find an alias

Confirm both mods are enabled, the pack setting is not empty, the row is enabled in your exported string, and you restarted. Check that the target prototype exists in your game (mods can add or remove items).

## Where is the technical format documented?

See the [Item Nicknames](https://mods.factorio.com/mod/item-nicknames) mod page and its GitHub README for the IN1 format and pack registration API.
