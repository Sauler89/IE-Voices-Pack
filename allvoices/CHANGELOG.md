# Changelog

## 1.2.0 — 2026-10-07

- Renamed the public project and release identity to **IE-Voices-Pack**.
- Converted the package to English-only installer/documentation.
- Removed the Italian installer translation and `README-it.md`.
- Replaced remaining legacy public-facing project-name references with `IE-Voices-Pack`.
- Added detailed `CREDITS.md` and `THIRD_PARTY.md` files to the package.
- Preserved the internal WeiDU technical identifier `allvoices` and `setup-allvoices.exe` for safe upgrades/uninstalls from earlier versions.
- Preserved all bundled voice audio files unchanged.

## 1.1.0 — 2026-09-03

- Replaced the 16 individual NWN2 components with one `NWN2 Voice Pack` component.
- The combined component installs all 16 named NWN2/Darkness over Daggerford characters in one pass.
- The combined component is blocked if any corresponding standalone NWN2 Soundsets component is already installed.
- Added hidden migration components so version 1.0.0 installations can remove the superseded individual entries safely.

## 1.0.0 — 2026-09-03

- Unified seven Graion Dilach EE 2.6 voice packs under one WeiDU installer.
- Added 16 named NWN2/Darkness over Daggerford voices as individual components.
- Excluded all 14 generic NWN2 Female/Male sets.
- Added BGEE, BG2EE, EET, and IWDEE target checks.
- Changed audio placement from hard-coded `lang/en_us/sounds` to the active `%EE_LANGUAGE%` directory.
- Added conflict checks for the corresponding standalone mods.
- Added Italian and English installer menus, provenance records, and original readmes.
