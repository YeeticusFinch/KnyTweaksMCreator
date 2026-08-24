# Kimetsunoyaiba Tweaks MCreator plugin

Target: MCreator `2026002`, Forge `1.20.1`.

This plugin adds KnY-specific procedure blocks gated behind the `kny_tweaks` API. Generated procedure
code calls the Kimetsunoyaiba Tweaks runtime API directly, so users do not need to hand-write common
ability code.

## Procedure blocks

- Set breathing form cooldown to seconds.
- Damage living entities in a radius using `Damager.hurt`; damage is not pre-scaled because `Damager.hurt` now scales internally.
- Dash a living entity forward with synced velocity.
- Apply/refresh bleeding.
- Spawn a registered/raw breathing slash with position offsets.
- Register slash model keys, namespaces, animated slash textures, and random slash textures.
- Set and reset guard state.
- Get the currently equipped registered Nichirin sword.
- Get the current `breathes` form id.
- Check whether an entity is using a breathing style id.
- Check whether an entity is a demon with `Damager.isDemon`, for demonized breathing variants.
- Register sword display position overrides and translation/rotation offsets.
- Register sword sheath mappings and sheathed display overrides.

## Custom mod elements

The `mod-elements/` directory contains the intended element data models for:

- KnY Breathing Style
- KnY Breathing Form
- KnY Nichirin Sword
- KnY Sword Sheath
- KnY Breathing Form Variation
- KnY Demon Slayer Entity

These are scaffolded separately from procedure blocks because sword/style/entity registration belongs
to specific Forge phases. See `docs/API_ADAPTERS_REQUIRED.md` for the small Kimetsunoyaiba Tweaks API
adapters that would make these templates compile cleanly without importing internal implementation
classes or manually threading MCreator event-bus state through templates.

## Runtime dependencies

The `kny_tweaks` API definition adds compile dependencies for Demon Slayer, GeckoLib, and
Kimetsunoyaiba Tweaks. The generated addon should still declare mandatory Forge `mods.toml`
dependencies for:

- `kimetsunoyaiba`
- `kimetsunoyaibamultiplayer`

This makes missing runtime mods fail as normal Forge dependency errors instead of late class-loading
errors. Add these manually in MCreator until the Java mod-element layer owns dependency generation.
