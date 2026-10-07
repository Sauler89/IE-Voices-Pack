# Gromnir Il-Khan Player Voicepack Handoff

This handoff is delivered **uninstalled**. It contains a ready-to-install WeiDU
voicepack plus all source audio and the earlier audition catalog. The conservative
map has **10 filled** usable slots and **51 vacant** usable slots. `damage2` and
`damage3` are separate disabled rows and are not ordinary vacancies in the current
BG2EE v2.6 workflow.

## Install the current voicepack

1. Keep the game and any EEex loader closed.
2. Copy `cd_gromn/` and `setup-cd_gromn.exe` together into the BG2:EE/EET game root.
3. Run `setup-cd_gromn.exe`, choose English, and install **Gromnir Il-Khan Soundset**.
4. Select **Gromnir Il-Khan** from the player-character soundset menu.

Building and validating this handoff does not execute the installer or alter a
game. WeiDU installation changes `dialog.tlk`, `charsnd.2da`, `M_cdsnd.lua`, and
the normal sound destinations, so the game must remain closed during installation.

## Curated assignments

Six assignments come directly from `GROMNIR.CRE` / `FINGROM.CRE` and retain their
authoritative engine events:

- `GROM01` -> `common1`
- `GROM02` -> `battlecry1`
- `GROM03` -> `battlecry2`
- `GROM04` -> `damage1`
- `GROM05` -> `dying1`
- `GROM06` -> `breaking_pt`

Four human-cut dialogue excerpts add the deliberately sparse player responses:

- GROM07 “Gromnir knows.” -> `common2`
- GROM08 “Gromnir knows the truth.” -> `common3`
- GROM12 “Gromnir knows.” -> `action1`
- GROM08 “We is no idiot!” -> `action_rare1` (`SELECT_RARE1`)

The GROM08 refrain export includes **“the truth”**; the subtitle records the audio
accurately. All four Audacity exports are included unchanged and were approved by
Chriz. Their installer copies receive no normalization, trimming, or fades.

The six CRE-authoritative game extracts use Vorbis audio inside `.WAV` files.
Their preserved source copies remain unchanged; only the six installer copies are
decoded to PCM signed 16-bit mono at 22,050 Hz for soundset compatibility.

## Deliberately vacant slots

See `VACANT_SLOTS.txt` for the compact 51-slot checklist and
`SLOT_MANIFEST.csv` for every usable and disabled player-sound row. The installer
does not contain silence placeholders. Area/time comments, fatigue, boredom,
party-death reactions, thief actions, spell disruption, and other weak semantic
fits remain empty. Extra action/common/combat slots are also left open rather than
reusing clips without recording that decision explicitly.

## Editable source material

- `source-material/user-cuts/` contains the four original Audacity exports unchanged.
- `source-material/manual-full-sources/` contains the three complete recordings used
  for manual cutting.
- `source-material/game-audio/` contains all thirteen extracted Gromnir recordings.
- `source-material/catalog/catalog.html` is the earlier offline audition catalog.
  It predates the accepted manual cuts and is preserved as source/curation history;
  `source-material/CUTTING_NOTES.md` records the accepted exports.

The installer uses the six-character audio prefix `GROMVP`. Single-character
suffix files belong in `cd_gromn/sounds/`; underscore-suffix files belong in
`cd_gromn/wav/`. To fill a vacancy later, add an accurately subtitled TRA entry,
the matching `cd_<slot>` TP2 assignment, and a PCM signed 16-bit mono WAV at
22,050 Hz. Do not enable `damage2` or `damage3`.

## Runtime testing still required

Static validation cannot prove live engine behavior. After installation, confirm
that the soundset appears in character creation and that selection, command,
rare-selection, combat, damage, death, and breaking-point events play the intended
clips with matching subtitles and comfortable volume.

No synthetic voice or TTS material is used.
