# Custom voice packs

Component **3000** is last. Choose **1** for all 17 packs or **2** to answer yes/no for each pack. Portraits are installed only with their selected voice pack. A selection of no packs rolls the component back without changes.

| Pack | Mapped audio clips | Portrait variants |
| --- | ---: | ---: |
| Archimonde | 29 | 0 |
| Amelyssan | 17 | 0 |
| Christopher Lee | 44 | 2 |
| Dagoth Ur | 37 | 2 |
| DotA 2: Invoker | 34 | 0 |
| DotA 2: Puck | 33 | 0 |
| Filthy Frank | 32 | 0 |
| Greta | 26 | 0 |
| Gromnir Il-Khan | 10 | 0 |
| Illasera | 17 | 0 |
| Morpheus | 41 | 2 |
| Palpatine | 34 | 2 |
| Rondak (lawful good) | 36 | 0 |
| Safana (Siege of Dragonspear) | 43 | 0 |
| Shang Tsung | 36 | 1 |
| The Hound | 36 | 1 |
| Thrall | 32 | 1 |

Audio is packaged as mono PCM signed 16-bit WAV at 22,050 Hz, with unique resource names. Existing subtitles are retained. Packs supplied without subtitles have no invented dialogue text. Illasera's descriptive filenames are mapped conservatively to selection, command, combat, damage and death events; its second critical-miss recording is retained as an unassigned alternative.

Invoker's missing BOB template entries and Puck's absent night recording are omitted. Rondak's two included rare-response clips are registered. EE 2.6's broken additional damage slots and `common7` remain unset; their supplied clips remain in the package. The curated Amelyssan and Gromnir selections stay sparse rather than being filled with unrelated source recordings.

All supplied portrait originals are preserved. Adapted 24-bit RGB BMPs use paired L/M/S names no longer than eight characters. R aliases retain the standard portrait as a fallback for Infinity UI++'s optional full-body inventory view; no new full-body artwork is invented. The M/S images retain at least 210×330 pixels to avoid enlarging legacy 54×84 thumbnails in Infinity UI++; large source art is retained at 420×660 where available. These portrait dimensions scale in the vanilla Enhanced Editions as well.

The portraits are added through a separate `M_ivport.lua` list. When Infinity UI++ is present, its start-screen refresh also restores this list without replacing its interface. Install the custom component after Infinity UI++; reinstall it if a later UI installation replaces `UI.MENU`.

`PACKS.json` records the source archive SHA-256, each slot, original filename, subtitle and portrait resource. Original source installer files and available READMEs are preserved in `docs/custom-sources/`. No original installer executable is bundled; the compilation uses the single supplied WeiDU 249 installer.
