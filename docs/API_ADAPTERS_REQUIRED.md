# KnY API adapters recommended for generated mod elements

Procedure blocks in this plugin can generate direct calls to the current Kimetsunoyaiba Tweaks API.
Custom mod elements are a different problem because MCreator templates need clean registration hooks
for each Forge phase.

Recommended adapters to add to Kimetsunoyaiba Tweaks:

- `KnYAPI.registerSword(...)` that hides `DeferredRegister<Item>` details from generated code.
- `KnYAPI.registerSheath(...)` for sheath metadata and display offsets.
- `KnYAPI.registerProcedureBreathingForm(...)` where generated code passes a procedure callback.
- `KnYAPI.registerProcedureBreathingStyle(...)` that accepts style id, display name, range, particle, parent style, and form ids.
- `KnYAPI.registerProcedureVariation(...)` for common setup after the base forms exist.
- `KnYAPI.registerDemonSlayerEntityCombat(...)` for style/sword/form metadata on generated entities.

Until those exist, the JSON files in `mod-elements/` document the intended MCreator GUI model and
`generators/forge-1.20.1/elements/` contains the initial template scaffold.
