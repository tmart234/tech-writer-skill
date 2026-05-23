# Voice profile

This folder is the *voice* layer of the technical-blog-writer skill: the parts that make the writing sound like one specific author on one specific beat. Everything outside this folder (`SKILL.md`, `references/`, `scripts/`) is the generic core and works on its own.

## How to use this folder

**Run the skill with no voice.** Delete this folder. The core falls back to a neutral professional voice and skips every voice-specific step: influence selection, register theory, beat-fit scoring, the multi-audience test, and the platform-specific front matter. Nothing else changes; the core never imports a path from here.

**Retarget the skill to a different author or beat.** Rewrite the four content files below. The core never needs to change. Keep the filenames the same so the core's voice hook still finds them.

## Files

- `profile.md`: the persona. Who you are, the beat, the voice, the readers you write for, and the beat-specific rubric dimension. The core loads this first and treats it as authoritative over the generic persona in `SKILL.md`.
- `toolkit.md`: the influences (writers to steal moves from, per post) and the register theory (Measured / Sharp / tactical landings). Loaded in Pass 1.
- `beat-notes.md`: beat-specific craft. Evidence types, stakes patterns, anti-patterns, and worked examples that only apply to this beat. Loaded in Pass 1, Pass 2, and the Pass 5 anti-pattern scan.
- `site.md`: the publishing platform. Jekyll front matter, SEO placement, and formatting conventions for this specific blog.

## How the core consumes this folder

`SKILL.md` has one hook, the "Voice profile" section near the top, that checks whether this folder exists. When it does, the six-pass workflow loads these files at the points marked in `SKILL.md` and `references/multi-pass.md`. When it doesn't, every one of those load steps is skipped and the core runs as a standalone generic technical-writing skill.
