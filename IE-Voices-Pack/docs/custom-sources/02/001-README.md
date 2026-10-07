# Amelyssan Player Voicepack Handoff

This handoff is delivered **uninstalled**. It contains a ready-to-install WeiDU
voicepack plus the editable cuts and complete source inventory needed to replace or
add lines later. The curated map has **17 filled** usable slots and **44 vacant**
usable slots. `damage2` and `damage3` are separate disabled rows and must not be
treated as ordinary vacancies in the current BG2EE v2.6 workflow.

## Install the current voicepack

1. Keep the game closed.
2. Copy `cd_amely/` and `setup-cd_amely.exe` together into the BG2:EE/EET game root.
3. Run `setup-cd_amely.exe`, choose English, and install **Amelyssan Soundset**.
4. Select **Amelyssan** from the player-character soundset menu.

The handoff builder and verification do not execute the installer or alter any live
game files. WeiDU installation changes `dialog.tlk`, `charsnd.2da`, `M_cdsnd.lua`,
and the normal sound destinations; keep the game closed while installing.

## What was deliberately left empty

See `VACANT_SLOTS.txt` for the compact 44-slot checklist and
`SLOT_MANIFEST.csv` for all 61 usable slots plus the two disabled damage rows.
`bored1` and `bored2` are intentionally vacant because the proposed bored line was
not liked. Environmental, thief-specific, and extra variant slots were not padded
with weak or overly godlike dialogue. Vacant TP2 variables are omitted; there are
no silence-placeholder WAV files.

## Important curation caveat

`morale_break2` uses `SARMEL04` ("No! Put down your weapons! This is not
necessary!"). It is a **loose semantic fit**: the spoken line addresses other
people, while the engine event means Amelyssan herself is panicking or fleeing.
The manifest makes this caveat explicit so it can be replaced easily.

## Editable source material

- `source-material/user-cuts/` contains the seven Audacity WAV exports unchanged.
- `source-material/game-audio/` contains all 68 extracted Amelyssan game resources.
  Some source files use an Ogg Vorbis container despite their `.WAV` extension;
  Audacity and ffmpeg can open them.
- `source-material/catalog/catalog.html` is the offline listening catalog. Its 68
  MP3 previews are included in the adjacent `preview_mp3/` directory, along with
  the CSV, JSON, and notes data. `amelyssan-notes.csv` is Chriz's unchanged
  curation export from the review round.

The install copies use the six-character prefix `AMELVP`. The manifest provides
the exact suffix and destination for every slot. To fill a vacancy, prepare a PCM
signed 16-bit, mono WAV at 22,050 Hz, name it `AMELVP<suffix>.wav`, put single-
character suffixes in `cd_amely/sounds/` and underscore suffixes in
`cd_amely/wav/`, add a matching `.tra` entry, and add only that `cd_<slot>`
assignment to the TP2. Do not enable `damage2` or `damage3`.

## Package-copy audio corrections

The original Audacity exports remain byte-for-byte unchanged. Only installer
copies receive the approved corrections:

- `MellySoBeIt.wav`: +11 dB; the measured source peak leaves clipping headroom.
- `MellyEnough.wav`: trimmed to about 0.91 seconds with a 30 ms ending fade.
- `MellyNoUghTooStrong.wav`: 25 ms tail fade.

Every installed sound is normalized to PCM signed 16-bit, mono, 22,050 Hz.

## Runtime testing still required

Static package checks cannot prove live engine behavior. After installation,
runtime testing should confirm that the soundset appears in character creation,
selection and command responses fire in their intended events, combat/hurt/death
and spell-disruption events use the expected clips, subtitles match, and perceived
volume is consistent. Subjective audition of `criticalhit`, `hurt2`, and the loose
`morale_break2` assignment remains especially useful.

No synthetic voice or TTS material is used.
