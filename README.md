# Item Nicknames: Example Pack

Optional sibling mod for [Item Nicknames](../item-nicknames_0.1.0/). Ships example nicknames as startup pack `example` (setting `item-nicknames-pack-example`) using the Item Nicknames pack API.

## Requirements

- **Item Nicknames** (`item-nicknames >= 0.1.0`) — required; this mod does nothing without it
- **Space Age** — optional (`? space-age` in `info.json`). Rows for prototypes that only exist with Space Age enabled simply have no effect when that expansion is not loaded (no separate skip step; missing prototypes are not nicknamed)

## Install

1. Enable **Item Nicknames** and **Item Nicknames: Example Pack** in the mod list.
2. Restart Factorio after changing startup settings (prototype names are applied at load time).

## How it works

1. `settings.lua` calls `pack-settings.register("example", …)` so Item Nicknames creates startup setting `item-nicknames-pack-example`.
2. The default IN1 string lives in `pack-definitions.lua` and is loaded when the setting is empty or unchanged.
3. At `data-final-fixes`, Item Nicknames merges pack rows, then your **Custom Nicknames** (`item-nicknames-definitions`). Later sources add tokens on the same target; they do not remove pack tokens unless you clear or replace the pack setting.

**Allow mod nicknames** (`item-nicknames-allow-mod-nicknames`) does not affect nickname packs; packs always merge when their setting has content. That toggle only controls the programmatic `nickname-api` registry.

To disable this pack only, clear **Example nicknames** in Mod settings → Startup (or paste an empty IN1 string).

## Editing the pack

**In game**

1. Open Item Nicknames from the shortcut bar.
2. **Nickname packs** → **Example nicknames** → edit rows.
3. Export IN1 from the pack editor, paste into Mod settings → Startup → **Example nicknames** (`item-nicknames-pack-example`).
4. Restart Factorio.

**In repo**

Edit the IN1 string returned from `pack-definitions.lua`. See the core mod [IN1 format](../item-nicknames_0.1.0/README.md#format-in1) to decode or author JSON before encoding.

## Repository layout

| File | Role |
|------|------|
| `thumbnail.png` | Mod browser / portal icon (144x144 recommended; shipped at 288x288) |
| `info.json` | Mod identity and dependencies |
| `settings.lua` | Registers the pack with Item Nicknames |
| `pack-definitions.lua` | Shipped IN1 default |
| `locale/en/item-nicknames-example.cfg` | Player-facing setting name and description |
