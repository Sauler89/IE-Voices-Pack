# IE-Voices-Pack

**IE-Voices-Pack** is a unified WeiDU collection of **188 English player voice sets** for modern Infinity Engine Enhanced Edition games.

The goal of this package is to make a large selection of classic Infinity Engine and Neverwinter Nights voices available through a single installer while preserving the work of the original voice-pack authors.

**Latest release:** [v1.2.0](https://github.com/Sauler89/Infinity-Engine-Voices-Pack/releases/tag/v1.2.0) — English-only public maintenance release.

## Features

- **188 English voice sets** in one collection
- WeiDU-based installation
- English subtitles where provided by the original source packs
- Voice sets sourced from Baldur's Gate, Baldur's Gate II, Icewind Dale, Icewind Dale II, Planescape: Torment, Neverwinter Nights, Neverwinter Nights 2, Mask of the Betrayer, and Darkness over Daggerford
- Compatible with current 2.6-era Enhanced Edition soundset systems
- The 14 generic NWN2 Female 1–7 and Male 1–7 sets are intentionally excluded

## Included voice packs

| Source pack | Voice sets included | Original author / maintainer |
| --- | ---: | --- |
| Baldur's Gate Voice Pack for EE 2.6+ | 18 | [GraionDilach](https://github.com/GraionDilach/Baldurs-Gate-Voice-Pack-for-EE-2.6) |
| Baldur's Gate II Voice Pack for EE 2.6+ | 9 | [GraionDilach](https://github.com/GraionDilach/Baldurs-Gate-II-Voice-Pack-for-EE-2.6) |
| Baldur's Gate NPC Voice Pack for EE 2.6+ | 36 | [GraionDilach](https://github.com/GraionDilach/Baldurs-Gate-NPC-Voice-Pack-for-EE-2.6) |
| Icewind Dale Voice Pack for EE 2.6+ | 30 | [GraionDilach](https://github.com/GraionDilach/Icewind-Dale-Voice-Pack-For-EE-2.6) |
| Icewind Dale II Voice Pack for EE 2.6+ | 12 | [GraionDilach](https://github.com/GraionDilach/Icewind-Dale-II-Voice-Pack-For-EE-2.6) |
| Planescape: Torment Voice Pack for EE 2.6+ | 8 | [GraionDilach](https://github.com/GraionDilach/Planescape-Torment-Voice-Pack-for-EE-2.6) |
| Neverwinter Nights Voice Pack for EE 2.6+ | 59 | [GraionDilach](https://github.com/GraionDilach/Neverwinter-Nights-Voice-Pack-for-EE-2.6) |
| NWN2 / MotB / Darkness over Daggerford named soundsets | 16 | [AstroBryGuy / The Gate Project](https://github.com/The-Gate-Project/NWN2SoundSets) |
| **Total** | **188** | |

### NWN2 / MotB / Darkness over Daggerford selection

This compilation includes the 16 named character soundsets from the NWN2 Soundsets project:

**Female:** Kaelyn the Dove, Elanee, Neeshka, Qara, Safiya, Shandra, Zhjaeve, Raegen Brunegar, Veiti Ironeater.

**Male:** Ammon Jerro, Bishop, Casavir, Gannayev-of-Dreams, Khlegar, Sand, Purfbin Doogrick.

The 14 generic NWN2 sets (Female 1–7 and Male 1–7) are intentionally not included.

## Compatibility

The bundle is intended for:

- **Baldur's Gate: Enhanced Edition** 2.6.6 or later
- **Baldur's Gate II: Enhanced Edition** 2.6.6 or later
- **Enhanced Edition Trilogy (EET)** on compatible 2.6.6+ Enhanced Edition installations
- **Icewind Dale: Enhanced Edition** 2.6.6 or later

The strict 2.6.6+ requirement is used because the included NWN2 Soundsets 2.x source requires that version or later.

### Siege of Dragonspear

For Steam/GOG installations where Siege of Dragonspear is still packaged as DLC, run [DlcMerger](https://github.com/Argent77/A7-DlcMerger) before installing WeiDU mods.

### Not intended for

- Classic pre-Enhanced Edition releases
- Planescape: Torment: Enhanced Edition as a target game
- Unmerged Steam/GOG Siege of Dragonspear installations

## Installation

1. Download the release archive.
2. Extract its contents into the game directory containing `chitin.key`.
3. Run the included WeiDU setup executable.
4. Select the desired voice-pack components.
5. Start the game and choose the new soundset from character creation or character customization.

If you change components later, run the same WeiDU setup program again.

> **Technical filename note:** the package intentionally keeps the internal WeiDU identifier `allvoices` and the installer filename `setup-allvoices.exe`. These names are retained solely for safe upgrade/uninstall compatibility with v1.0.0/v1.1.0; the public project and release name is **IE-Voices-Pack**.

## Mod compatibility notes

IE-Voices-Pack is primarily an audio/soundset collection and should generally coexist with quest, NPC, rules, item, spell, and tactical mods.

Extra care is recommended with mods that replace or heavily rewrite:

- `CHARSND.2DA`
- soundset-related Lua files
- the player voice-selection interface
- other large soundset collections using overlapping resource names

Install DlcMerger first when required. If another mod also changes the soundset system, keep a WeiDU log and verify the final voice-selection list in game.

## Credits

This repository is a **compilation and integration project**. The underlying voice-pack work belongs to the original authors and projects.

### Original voice-pack authors

- **GraionDilach** — Baldur's Gate, Baldur's Gate II, Baldur's Gate NPC, Icewind Dale, Icewind Dale II, Planescape: Torment, and Neverwinter Nights EE 2.6+ voice packs.
- **AstroBryGuy** — original author of **NWN2 Soundsets**, now maintained/hosted by **The Gate Project**.

### Technical acknowledgements

The original source projects also acknowledge:

- **CamDawg** — EE 2.6+ soundset documentation and EE Soundset Tool
- **Smeagolheart** — Awesome Soundsets documentation and earlier soundset work
- **WeiDU** contributors
- **Near Infinity** contributors
- **Argent77** and other Infinity Engine tooling/packaging contributors

See [CREDITS.md](CREDITS.md) for detailed attribution and source links.

## Copyright and third-party content

This is an unofficial fan-made compilation. It is not developed, supported, sponsored, or endorsed by Beamdog, BioWare, Black Isle Studios, Interplay Entertainment, Ossian Studios, Hasbro, Wizards of the Coast, or their affiliates.

Original game audio, text, names, characters, and related assets remain the property of their respective rights holders. Third-party code and assets retain the licensing terms of their original projects. This repository does **not** claim ownership of the original voice recordings and does not relicense third-party content.

See [THIRD_PARTY.md](THIRD_PARTY.md) before redistributing or repackaging material from this collection.

## Project history

The project was previously released under the name **Infinity Engine All Voices**. The public-facing project name is now **IE-Voices-Pack**.

## Maintainer

Compilation, integration, packaging, and repository maintenance: **Sauler89**.
