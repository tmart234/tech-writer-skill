# technical-blog-writer

A skill for writing, editing, and reviewing long-form technical posts: blog posts, tutorials, how-to guides, deep dives, vulnerability writeups, analysis, opinion pieces, and essays.

## Two layers

The skill is built in two layers so the generic craft can be shared without the personal voice.

**Core (generic, stands alone).** `SKILL.md`, `references/`, and `scripts/`. A complete technical-writing skill on its own: content-type classification, reader-level discipline, the six-pass workflow (evidence → stakes → story shape → draft → anti-pattern → validation), the AI-slop anti-pattern catalog, the rhetorical theory (Winston, McEnerney), the narrative-craft reference (frameworks from Freytag through StoryBrand, the five-beat skeleton, opening hook taxonomy), and the mechanical draft checker. Topic-agnostic. Nothing here imports a path from `voice/`.

**Voice (the secret sauce, optional).** The `voice/` folder. The persona, the beat, the influences, the register theory, the publishing platform. This is what makes the output sound like one specific author on one specific beat.

## Sharing the skill

- **Share the generic skill:** delete the `voice/` folder. The core falls back to a neutral professional voice and skips every voice-specific step (influence selection, register theory, beat-fit scoring, the multi-audience test, platform-specific front matter).
- **Share your voice too:** keep `voice/` as is.
- **Retarget to a different author or beat:** rewrite the four files in `voice/` (`profile.md`, `toolkit.md`, `beat-notes.md`, `site.md`). The core never changes.

See `voice/README.md` for how the core consumes that folder.

## Install in Claude Code

Build the archive:

```bash
./scripts/build-skill.sh             # includes voice/
./scripts/build-skill.sh --no-voice  # generic core only
```

Then either drag `dist/technical-blog-writer.skill` into a Claude Code
session, or unzip it manually:

```bash
mkdir -p ~/.claude/skills
unzip dist/technical-blog-writer.skill -d ~/.claude/skills/
```

Claude Code auto-discovers skills under `~/.claude/skills/` and triggers
this one on long-form technical-writing requests.

## Layout

```
SKILL.md                  core: the six-pass workflow, rule-set sections, the voice hook
references/
  writing-rules.md        core: the non-negotiable prose rules
  anti-patterns.md        core: the AI-slop catalog
  multi-pass.md           core: the six-pass workflow detail
  methods-of-development.md  core: body-structure catalog (loaded at Pass 1 for 1,200+ word posts)
  storytelling.md         core: narrative-craft reference (loaded at Pass 3 — frameworks, five-beat skeleton, hook taxonomy, cognitive science, anti-patterns)
  how-to-speak.md         core: rhetorical theory (Winston)
  craft-of-writing.md     core: rhetorical theory (McEnerney)
  technical-documentation.md  sibling reference: documentation/procedure/report mode (out of scope for the blog workflow)
scripts/
  check-draft.sh          core: mechanical anti-pattern checker
voice/                    optional: the secret-sauce layer
  profile.md              persona, beat, audiences
  toolkit.md              influences + register theory
  beat-notes.md           beat-specific evidence, anti-patterns, examples
  site.md                 publishing platform (Jekyll front matter)
```
