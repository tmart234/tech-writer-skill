# Storytelling for non-fiction: frameworks, craft, and verification

> Load this file before Pass 3 (Story shape). SKILL.md sets the content type; this file picks the narrative shape that delivers it. Pass 1 (evidence) and Pass 2 (stakes) produce the *what*; this pass produces the *how it moves*. Argument and story are not in tension — argument tells the reader why a claim is true; story makes the reader feel the claim mattering. Both, or the prose lands inert.
>
> A post that has evidence and stakes but no story shape reads like a CVE write-up with adjectives. A post that has story shape but no evidence reads like a blog-shaped vibe. This file is the second layer.

## §1. When story applies (and when it doesn't)

Story is a delivery layer over argument. Match the depth of the story shape to the content type from `SKILL.md`:

| Content type | Story depth | Notes |
|---|---|---|
| **Tutorial** | Minimum: one-line story shell | A scene of the problem at the start; a scene of the result at the end. Body is steps. Do not turn a tutorial into a hero's-journey memoir. |
| **How-to guide** | Minimum: a hook of consequence | Reader is already goal-oriented; over-narrating wastes their time. Open with the moment the goal becomes urgent, then ship the steps. |
| **Deep dive** | Required: full arc (hook → stakes → tension → turn → takeaway) | The turn is usually a surprising mechanism, a counter-intuitive cause, or a reframing of "normal." Kishōtenketsu (§3) fits this best. |
| **Opinion / analysis** | Required: full arc, with explicit named enemy | The "stakes" beat and the Pass 2 stakes ledger fuse. Raskin / Drift "name the enemy" structure (§3) fits this best. |
| **Essay** | Required: full arc, with sequenced moves | Schneier's artifact → abstraction → incentives → prescription form (see `SKILL.md`, *Content type*) is already a story shape; this file gives you the beats inside it. |
| **Vulnerability writeup** | Required: full arc, discovery-shaped | See §7 mini-template. The turn is the moment the assumed cause is wrong. |
| **Postmortem / incident retrospective** | Required: full arc, timeline-shaped | See §7 mini-template. Blameless framing is a story constraint, not a softener. |
| **Reference docs, specs, procedures** | Skip story entirely | Use `references/technical-documentation.md`. Story machinery does damage on a man-page. |

**The misapplication trap.** Don't reach for story when the reader wants the answer in line 1 (status updates, executive memos, decision docs). For those, use Minto Pyramid (top-down: answer / supporting arguments / data). Minto is not a story shape; it is the explicit non-story alternative. Knowing when to use it is part of knowing story.

## §2. The five-beat skeleton (cross-framework distillation)

Every framework in §3 shares some subset of these five beats. They are the operational checklist. Write each one down in Pass 3, before drafting:

1. **Hook** — the first 200 words. Open the curiosity gap (§6, Loewenstein). Establish a specific time, place, system, or person doing something. Make the reader want to know what happens next. Cold-thesis openers count as hooks if the thesis is sharp enough to make the reader want the evidence.
2. **Stakes** — who loses what, why now, what's the cost of inaction. Already produced by Pass 2's stakes ledger; the storytelling job is to *land* them in scene rather than asserting them in summary. "Patient harm" is summary. "A 73-year-old in a Florida ICU on the wrong drip rate at 2 a.m." is scene.
3. **Tension** — the obstacle to resolution. In opinion/essay: the broken incentive. In deep dive: the mechanism that doesn't work the way the reader thinks. In postmortem: the partial mental model that almost-but-not-quite explained the symptoms. Tension is what makes the reader keep scrolling; without it, the body is a list.
4. **Turn** — the moment the reader's expectation flips. The assumed cause is wrong. The "obvious" fix makes it worse. The vendor's defense collapses. Without a turn, the post is a flat ramp from setup to conclusion and the reader can stop at any paragraph without losing anything. This is the single beat most often missing in technically-correct-but-inert posts.
5. **Takeaway** — what the reader couldn't have written before reading. A prescription, a refusal, a named concept (§ *Pipeline thinking* in `SKILL.md`: the "coin names" rule), a sharp choice. Not a recap. Not a "thanks for reading." The takeaway is the thing that justifies the post existing.

**Sub-checklist per beat:**

- **Hook**: name the specific thing in the first sentence. No "in this post we'll explore." See `references/writing-rules.md` introductions section and §5 below.
- **Stakes**: named loser, named winner, named incentive — already enforced by Pass 2 (`references/multi-pass.md`). Story job: render them in scene, not summary.
- **Tension**: identify the obstacle in one sentence. If you cannot, the post has no tension and the reader has no reason to stay.
- **Turn**: identify the sentence where the reader's expectation flips. If no such sentence exists, the post is structurally flat; either find the turn or restructure to surface one.
- **Takeaway**: identify the one sentence the reader will quote. If the answer is "I don't know," see `references/multi-pass.md` Pass 6 item 15 (salient-idea test).

## §3. Framework catalog

One entry per framework: name + originator, beats in shorthand, best-fit non-fiction use, one-line note on how it adapts away from fiction. Pick the framework whose shape fits the content type and the evidence you have. Don't pick more than one per post; framework collisions read as confused structure.

### 3.1 Freytag's Pyramid
- **Origin**: Gustav Freytag (1863), analyzing five-act drama.
- **Beats**: exposition → rising action → climax → falling action → dénouement.
- **Best-fit non-fiction use**: vocabulary baseline. Use the *names* (rising action, climax, dénouement) when discussing structure; rarely use the *shape* directly, because the symmetric falling-action / dénouement tail is usually wrong for blog posts (readers leave after the climax).
- **Adaptation note**: collapse falling action + dénouement into the takeaway. The post ends at the turn, not after a long unwinding.

### 3.2 Three-Act Structure
- **Origin**: Aristotle's *Poetics* (beginning, middle, end); codified for Hollywood by Syd Field.
- **Beats**: setup (~25%) → confrontation (~50%) → resolution (~25%).
- **Best-fit non-fiction use**: default proportions for any narrative-shaped post. The 25/50/25 ratio is a useful sanity check: if your "setup" eats 60% of the word count, you're burying the lede.
- **Adaptation note**: in non-fiction, the act-2 confrontation is the body's evidence and tension; the act-3 resolution is the takeaway, not the protagonist's emotional payoff.

### 3.3 Hero's Journey (Vogler's 12)
- **Origin**: Joseph Campbell, *The Hero with a Thousand Faces* (1949), monomyth in 17 stages. Christopher Vogler, *The Writer's Journey* (1992 memo, 1992 book), simplified to 12 for Disney's story departments. [Vogler 12 stages](https://www.storyflint.com/blog/heros-journey-christopher-vogler).
- **Beats**: Ordinary World → Call to Adventure → Refusal of the Call → Meeting the Mentor → Crossing the Threshold → Tests, Allies, Enemies → Approach to the Innermost Cave → Ordeal → Reward → The Road Back → Resurrection → Return with the Elixir.
- **Best-fit non-fiction use**: first-person "I built / discovered / debugged / learned X" pieces where the writer's transformation is part of the value. Use a *subset* of the beats, not all 12.
- **Adaptation note**: warn against over-fitting. Forcing a "refusal of the call" into a postmortem is parody. Most technical pieces use 4–5 beats: ordinary world (system normal) → call (anomaly) → ordeal (root-cause hunt) → reward (the fix) → return with elixir (the takeaway / new mental model).

### 3.4 Save the Cat (Snyder's 15 beats)
- **Origin**: Blake Snyder, *Save the Cat!* (2005), distilled from hundreds of commercial screenplays. [Snyder's 15 beats](https://www.studiobinder.com/blog/save-the-cat-beat-sheet/).
- **Beats** (full): Opening Image, Theme Stated, Setup, Catalyst, Debate, Break Into Two, B Story, Fun and Games, Midpoint, Bad Guys Close In, All Is Lost, Dark Night of the Soul, Break Into Three, Finale, Final Image.
- **Best-fit non-fiction use**: too dense for most blog posts; mine the four beats that transfer cleanly: **Catalyst** (the event that breaks the status quo — your hook of consequence), **Theme Stated** (the sentence that captures the post's argument, dropped early as foreshadowing), **All Is Lost** (the moment the obvious solution fails — your turn), **Finale** (the resolution and takeaway).
- **Adaptation note**: ignore the rest. Trying to write a 15-beat blog post produces a movie pitch, not a post.

### 3.5 Dan Harmon Story Circle
- **Origin**: Dan Harmon (creator of *Community* and *Rick and Morty*), distilled from Campbell. [Harmon's 8 steps](https://www.studiobinder.com/blog/dan-harmon-story-circle/).
- **Beats**: (1) You — character in a comfort zone. (2) Need — they want something. (3) Go — they enter an unfamiliar situation. (4) Search — they adapt. (5) Find — they get what they wanted. (6) Take — they pay a price for it. (7) Return — they come back changed. (8) Change — they apply the lesson.
- **Best-fit non-fiction use**: personal/experience pieces, first-person incident retrospectives, "I tried this for a year and here's what I learned" posts. The eight steps map cleanly onto a writer-led investigation.
- **Adaptation note**: in technical writing, "comfort zone" is the system-as-understood; "unfamiliar situation" is the anomaly; "price" is the cost of the fix or the trade-off accepted; "change" is the new mental model the reader leaves with.

### 3.6 Pixar Story Spine
- **Origin**: Kenn Adams (1991, as improv exercise), brought into Pixar via Rebecca Stockley (~1997), popularized by Emma Coats's #storybasics tweets (2012) as Pixar's "Rule #4." [Story Spine](https://www.aerogrammestudio.com/2013/03/22/the-story-spine-pixars-4th-rule-of-storytelling/).
- **Beats**: "Once upon a time, ___. Every day, ___. One day, ___. Because of that, ___. Because of that, ___. Until finally, ___."
- **Best-fit non-fiction use**: the universal compression tool. Fill in the spine in Pass 3 before drafting any narrative-shaped post; it forces you to name the status quo, the disruption, the cascading consequences, and the resolution in one paragraph.
- **Adaptation note**: the two "because of that"s are the most important. They enforce the And/But/Therefore rule (§4.1) — each beat is *caused by* the previous one, not just *after* it. If you can't fill in a "because of that" with a causal connection, the post is episodic.

### 3.7 Pixar 22 Rules
- **Origin**: Emma Coats, Pixar story artist (2012 Twitter thread). [22 Rules](https://www.aerogrammestudio.com/2013/03/07/pixars-22-rules-of-storytelling/).
- **Best-fit non-fiction use**: cite as further reading; pull only the three rules that transfer to technical prose:
  - **#4 Story Spine** — see §3.6.
  - **#6 What is your character good at, comfortable with? Throw the opposite at them.** In technical writing: the system whose normal behavior the post describes — what breaks when its assumptions are violated? The whole deep-dive form lives in this rule.
  - **#14 Why must you tell THIS story?** The Pass 1 value-to-whom sentence (`SKILL.md` *Content type*) is this rule. If you can't answer, you don't have a post.
- **Adaptation note**: most of the other 19 rules (#7 endings before middles, #9 lists of what wouldn't happen, etc.) are screenwriter workflow notes, not output rules.

### 3.8 Kishōtenketsu
- **Origin**: classical Chinese four-line poetry; standard plot structure across East Asian narrative (Japan, Korea, China). [Kishōtenketsu](https://mythicscribes.com/plot/kishotenketsu/).
- **Beats**: **Ki** (introduction — set the scene). **Shō** (development — deepen it). **Ten** (twist — introduce a sudden, unrelated element that recontextualizes everything). **Ketsu** (conclusion — show how the new element changes the meaning of what came before).
- **Best-fit non-fiction use**: explanatory deep dives where the "twist" is a surprising mechanism, a counter-intuitive cause, or a piece of context that reframes the system. The only major framework that does not require conflict, which makes it the best fit for "how this thing actually works" pieces where there's no villain.
- **Adaptation note**: the *ten* (twist) is structurally critical and almost always missing in technical posts. If your deep dive has Ki → Shō → Ketsu with no twist, it is a description, not a story. Find the surprising thing.

### 3.9 Vonnegut's Story Shapes
- **Origin**: Kurt Vonnegut, anthropology master's thesis (rejected at Chicago for being "too much fun"), later popularized in his lectures. [Vonnegut's shapes](https://storytellingedge.substack.com/p/the-simple-shapes-of-great-stories).
- **Shapes**: Man in Hole (good → bad → better), Boy Meets Girl (good → bad → good, applied to anything), Cinderella (rise → fall → rise higher), Which Way is Up? (ambiguous trajectory), Tragedy (fall), Creation Story (rise), Old Testament (rise → fall → catastrophic fall).
- **Best-fit non-fiction use**: not a structural framework — use as a *diagnostic*. Sketch the emotional graph of your draft (y-axis: good fortune; x-axis: time). If the line is flat, the post is structurally inert. If it has a sharp drop or climb, that's where the reader will engage.
- **Adaptation note**: in technical writing, the y-axis is "is the reader's understanding of the world more or less ordered than when they started?" Most good deep dives are Man-in-Hole shape: the system seemed simple, you reveal a hidden complexity, then resolve it into a new simplicity at a higher level.

### 3.10 Nancy Duarte Sparkline
- **Origin**: Nancy Duarte, *Resonate* (2010), reverse-engineered from Steve Jobs's iPhone keynote, MLK's "I Have a Dream," and dozens of other persuasive talks. [Duarte sparkline](https://www.duarte.com/blog/creating-moments-of-impact-using-sparklines-for-strategic-conversations/).
- **Beats**: oscillate between "what is" (the broken current state) and "what could be" (the proposed future), repeating 2–4 times with rising amplitude, ending at "the new bliss."
- **Best-fit non-fiction use**: opinion pieces, vision posts, conference talks, RFC-style proposals, anything that asks the reader to change something. The oscillation is the structural device that maintains tension across a long argument without resorting to a single dramatic climax.
- **Adaptation note**: in writing, mark the "what is" / "what could be" pivots with section breaks or explicit transitions. The shape only works if the reader feels the oscillation; if all the "what is" content is in section 1 and all the "what could be" content is in section 4, you have a comparison, not a sparkline.

### 3.11 Heath brothers SUCCESs
- **Origin**: Chip Heath and Dan Heath, *Made to Stick* (2007). [SUCCESs](https://heathbrothers.com/books/made-to-stick/).
- **Acronym**: **S**imple, **U**nexpected, **C**oncrete, **C**redible, **E**motional, **S**tories.
- **Best-fit non-fiction use**: not a structural framework — use as a draft-level audit. After Pass 4 (draft), score the post on each letter. Below the bar on any letter, the post is forgettable on that dimension.
- **Adaptation note**: in technical writing, "Credible" is already enforced by Pass 1 evidence; "Concrete" by `writing-rules.md` and the existing "concrete artifact" rule. The two letters most often missing in technical posts are **Unexpected** (the turn — see §2 beat 4) and **Emotional** (the named loser — see Pass 2 stakes ledger). Audit those.

### 3.12 Andy Raskin / Drift "name the enemy"
- **Origin**: Andy Raskin's analysis of Drift's sales pitch (2017), generalized from Steve Jobs's 2007 iPhone launch and others. [Raskin / Drift](https://medium.com/the-mission/the-best-sales-pitch-ive-seen-all-year-7fa92afaa248).
- **Beats**: (1) Name a big, undeniable shift in the world. (2) Show that the shift creates winners and losers (name the enemy: the old way, the incumbent assumption, the obsolete tool). (3) Show the stakes of staying on the losing side. (4) Tease the promised land — what the world looks like for the winners. (5) Show evidence that you can deliver it.
- **Best-fit non-fiction use**: opinion pieces, product/positioning writing, conference keynotes, manifestos. The cleanest direct map to the Pass 2 stakes ledger: the *enemy* is the named winner (the actor whose incentives produce the failure mode); the *losers* are the named losers; the *promised land* is what changing the incentive would produce.
- **Adaptation note**: the "name the enemy" move is what turns analysis into pointing. In technical writing, the enemy is often a *practice* or *assumption*, not a competitor: "the assumption that signed code is safe code," "the practice of treating dependency updates as discretionary."

### 3.13 StoryBrand (Miller's 7-part)
- **Origin**: Donald Miller, *Building a StoryBrand* (2017). [StoryBrand 7-part](https://www.creativeo.co/post/storybrand-framework).
- **Beats**: A **character** (the customer / reader) has a **problem** and meets a **guide** (your brand / your post) who gives them a **plan** and **calls them to action** that helps them avoid **failure** and ends in **success**.
- **Best-fit non-fiction use**: landing-page-style explainers, product-positioning posts, README files that need to make a tool's value obvious in 30 seconds. Most tech blog posts are not StoryBrand-shaped.
- **Adaptation note** *(cardinal sin)*: the writer is **the guide, never the hero**. The hero is the reader. Posts that cast the writer as the hero ("how I built X," "what I learned about Y") are not StoryBrand-shaped, no matter how they're framed; if you want to write about your own journey, use Hero's Journey (§3.3) or Story Circle (§3.5) instead. The StoryBrand misapplication is the most common storytelling failure in tech-marketing prose: writer-as-hero collapses the structure into self-promotion.

### 3.14 (Contrast entry) Minto Pyramid
- **Origin**: Barbara Minto, *The Minto Pyramid Principle* (1987), developed at McKinsey.
- **Beats**: this is **not** a story shape. Top-down: state the answer / conclusion first; supporting arguments next; supporting data last. Reader can stop at any level and have the most important information they're capable of acting on.
- **Best-fit non-fiction use**: executive memos, status updates, decision documents, internal RFCs where the reader wants the bottom line in line 1. Anywhere the reader is choosing between scrolling and not-scrolling, and you need them to not-scroll only by choice rather than by suspense.
- **Adaptation note**: cite as the explicit non-story alternative. Knowing when to use Minto instead of any of §3.1–3.13 is part of knowing story. The rule of thumb: if the reader is going to act on the post in the next hour, use Minto. If you need the reader to *change a belief or pattern* before they act, use a story shape.

## §4. Craft fundamentals

Rules for the prose itself, regardless of which framework from §3 you pick. Apply during Pass 4 (draft).

### 4.1 And / But / Therefore (Parker rule)
- **Origin**: Trey Parker and Matt Stone, *South Park* writers' room.
- **Rule**: between any two beats in your draft, the connective should be **"but"** or **"therefore"** — never **"and then."** "And then" produces episodic, flat prose. "But" introduces a complication; "therefore" introduces a consequence.
- **Test**: read your section transitions. Can you replace each with "but" or "therefore"? If two adjacent paragraphs read as "we did X, and then we did Y," the section is episodic — collapse, reorder, or escalate so one paragraph causes the next.
- **Storytelling Spine (§3.6) connection**: the two "because of that" slots in the Story Spine are the Parker rule made explicit.

### 4.2 Scene vs. summary
- **Scene** = a moment with time, place, and a verb a human is doing. "At 02:14 UTC on Friday, the load balancer started returning 502s to one in three requests."
- **Summary** = a compressed claim. "Outages can occur when load balancers are misconfigured."
- **Rule**: open with scene. Summarize the middle. End with scene.
- **Why**: scene engages the reader's imagery (§6 — Green & Brock transportation theory). Summary tells the reader what to think but gives them nothing to *see*, so the reader doesn't feel the claim.

### 4.3 Show, don't tell (Gardner's fictive dream)
- **Origin**: John Gardner, *The Art of Fiction* (1983); the goal of prose is to produce a "vivid and continuous dream" in the reader's mind.
- **Rule**: if a sentence asserts an emotion or judgment ("the team was frustrated," "this is dangerous," "the design is elegant"), replace it with the artifact that produced that emotion or judgment ("the third rollback at 2 a.m. with no new information," "an attacker who can read `/etc/shadow` without auth," "the entire protocol fits in 40 lines of Go").
- **Test**: scan the draft for emotional/evaluative adjectives. For each, ask: did I show the reader what made me say this, or did I just claim it? If you claimed it, the reader has no reason to believe you. Replace the claim with the artifact.
- **Cross-reference**: this rule echoes and extends the "concrete artifact" rule in `references/writing-rules.md` introductions section, and §5 smell-test in `references/anti-patterns.md`.

### 4.4 Specificity over abstraction
- **Rule**: prefer named systems, exact versions, dates with timestamps, line numbers, real error messages. The specific noun beats the abstract category every time.
- **Why**: identifiable victim effect (§6 — Schelling, Slovic). Readers respond to specifics, not aggregates. In technical writing, "one named system at one timestamp" is the equivalent of "Rokia, the 7-year-old in Mali."
- **Reuse**: already enforced by `references/writing-rules.md`. This entry exists to cross-reference, not restate.

### 4.5 Desire / obstacle / stakes (the narrative triangle)
- **Rule**: every narrative passage must answer three questions:
  1. **Desire**: what does the protagonist (the writer, the system, the team, the on-call engineer) *want*?
  2. **Obstacle**: what's in the way?
  3. **Stakes**: what happens if they don't get it?
- **Test**: pick any three-paragraph stretch in the draft. Can you name the desire, the obstacle, and the stakes for that stretch? If any is missing, the stretch is decoration — cut or restructure.
- **Pass 2 connection**: stakes here = the stakes ledger from Pass 2. Desire and obstacle are new, and storytelling-specific.

### 4.6 Pacing
- **Rule**: scene length tracks importance. The most important beat (usually the turn — §2 beat 4) gets the most concrete, slowest prose. Setup and resolution compress.
- **Failure mode**: equal-weight paragraphs across the post produce a metronomic flatness even when each paragraph is well-written individually. The reader has no signal for where to pay attention.
- **Test**: count the paragraphs in each section. Is the section that contains your turn at least as long as your setup? If setup is longer than turn, you over-prepared and under-delivered.

### 4.7 Causation over chronology
- **Rule**: chronological order is rarely the optimal order for the reader. Time order serves the writer's investigation; cause order serves the reader's understanding.
- **Test**: if your post follows "first I tried X, then Y, then Z," restructure to lead with Z and demote X and Y to a "what didn't work and why" section. Already enforced by `references/craft-of-writing.md` §1 (structural restructuring); this entry exists to connect it to the storytelling layer: chronological order is for the *body* of an incident retrospective, not for the *opening*.

## §5. Opening hook taxonomy

The first 200 words decide whether the reader stays. Pick one of the following hook patterns in Pass 3, matching it to the content type from `SKILL.md` and the framework you chose in §3.

### 5.1 In medias res ("in the middle of things")
- **Trigger**: drop the reader into the moment of failure, decision, or surprise. No setup.
- **Example shape**: *"At 02:14 UTC on Friday, the load balancer started returning 502s to one in three requests. We did not know why."*
- **Best for**: postmortems, vulnerability writeups, incident-shaped deep dives.

### 5.2 Anecdotal lede
- **Trigger**: a specific person at a specific time doing a specific thing. The person is real, named, and the moment is dated.
- **Example shape**: *"In March 2021, a security engineer at a regional hospital chain noticed her infusion pumps were beaconing to an IP in Belarus."*
- **Best for**: opinion pieces, essays, deep dives with a human dimension.
- **Failure mode**: the writer makes the anecdote about themselves when it should be about a representative user, victim, or actor. The hero is the reader, not the writer (§3.13 cardinal sin).

### 5.3 Surprising stat or contradiction
- **Trigger**: a number, fact, or juxtaposition that violates the reader's prior. *But only if it's load-bearing for the rest of the post.* Decorative stats are anti-patterns.
- **Example shape**: *"42% of the libraries in our SBOM had no known maintainer as of 2024 — and our compliance team had signed off on every one."*
- **Best for**: opinion pieces, essays, analytical deep dives.
- **Failure mode**: stat in the hook, never referenced again. If the number doesn't drive the next 1,000 words, it's decoration.

### 5.4 Cold thesis
- **Trigger**: state the post's claim in the first sentence, sharp enough that the reader wants the evidence.
- **Example shape**: *"Signed code is not safe code, and the entire supply-chain security industry is built on pretending otherwise."*
- **Best for**: opinion pieces and essays where the writer has earned the right to be blunt by past work or by the body's evidence.
- **Note**: this is the existing skill's preferred default for opinion. Keep it; this taxonomy just contextualizes it among other valid openers.

### 5.5 Scene of consequence
- **Trigger**: a vivid moment whose meaning is not immediately clear. The reader has to keep reading to find out why this scene matters.
- **Example shape**: *"The third rollback finished at 04:31. Nobody on the call had said the word 'database' yet."*
- **Best for**: deep dives, postmortems, narrative-shaped explainers.
- **Connection**: this is the operationalized form of the "concrete scene" smell-test in `references/anti-patterns.md` §5.

### 5.6 Named-enemy opener (Raskin pattern — §3.12)
- **Trigger**: name the broken practice, assumption, or incumbent that the post is going to dismantle. Make the reader want to see it dismantled.
- **Example shape**: *"The phrase 'shift left' has done more damage to application security than any single CVE."*
- **Best for**: opinion pieces, manifestos, positioning posts.

### 5.7 Question (use sparingly)
- **Trigger**: a question the reader already has, or didn't know they had.
- **Example shape**: *"Why does every TLS library reimplement ASN.1, badly?"*
- **Best for**: deep dives and essays where the question genuinely organizes the post.
- **Failure mode**: rhetorical questions whose answer is "yes" or "no" or "obvious" — these are filler. The question must be load-bearing.

### 5.8 (Anti-pattern) Hook → background → thesis
- **Status**: **banned.** The academic intro form: a clever sentence to get attention, then 400 words of background, then finally the thesis. Already flagged in `references/anti-patterns.md` §4n.
- **Why banned**: every reader who came for the hook leaves during the background. If you have a hook, the thesis follows it within two paragraphs, not four.
- **Cross-reference**: this is the only opening pattern this skill outright bans; the seven above are all valid choices.

## §6. Why story works (cognitive science)

The justifications for the rules above. Read once; cite when defending a craft choice against a "but isn't this just decoration?" critique.

### 6.1 Oxytocin and character-driven narrative (Zak)
- **Source**: Paul J. Zak, *"Why Your Brain Loves Good Storytelling,"* Harvard Business Review (2014); underlying lab research at Claremont Graduate University. [Zak HBR](https://hbr.org/2014/10/why-your-brain-loves-good-storytelling).
- **Finding**: character-driven stories consistently cause oxytocin synthesis in listeners. The amount of oxytocin released predicts how much subjects subsequently donate to a charity related to the story.
- **Implication for technical writing**: the named loser in the Pass 2 stakes ledger is not optional decoration — it's the only mechanism the reader has for caring at the neurological level. "Patients are harmed" produces no oxytocin. "A 73-year-old in a Florida ICU" does.

### 6.2 Curiosity / information-gap theory (Loewenstein)
- **Source**: George Loewenstein, *"The Psychology of Curiosity"* (1994); *Information Gaps* paper (2016). [Loewenstein information gap](https://www.cmu.edu/dietrich/sds/docs/golman/golman_loewenstein_curiosity.pdf).
- **Finding**: curiosity is the felt deprivation of an information gap. The brain treats it like hunger — a drive state that motivates resolution. Information gaps are both pleasurable (anticipation) and aversive (deprivation), which is what produces engagement.
- **Implication for technical writing**: openings should *open a gap* (state the surprising fact, the unresolved question, the failure with unknown cause). The body's job is to *close* it. Posts that resolve the gap in the hook leave the reader nothing to want.

### 6.3 Narrative transportation (Green & Brock)
- **Source**: Melanie C. Green and Timothy C. Brock, *"The Role of Transportation in the Persuasiveness of Public Narratives,"* Journal of Personality and Social Psychology (2000). [Green & Brock](http://www.communicationcache.com/uploads/1/0/8/8/10887248/the_role_of_transportation_in_the_persuasiveness_of_public_narratives.pdf).
- **Finding**: extent of transportation (absorption into a story) correlates with belief change. Highly transported readers find fewer "false notes" — they fact-check less.
- **Implication for technical writing**: vivid imagery is the lever for persuasion. The Show-Don't-Tell rule (§4.3) is not a stylistic preference; it's the mechanism by which the reader's beliefs actually update.

### 6.4 Identifiable victim effect (Schelling, Slovic)
- **Source**: Thomas Schelling, *"The Life You Save May Be Your Own"* (1968); Paul Slovic et al., *"Sympathy and Callousness"* (Small, Loewenstein, Slovic, 2007). [Wikipedia: Identifiable victim effect](https://en.wikipedia.org/wiki/Identifiable_victim_effect).
- **Finding**: subjects donate substantially more when shown a single named child than when shown aggregate statistics about millions affected. Compassion fades — and eventually collapses — as the number of victims increases.
- **Implication for technical writing**: aggregate stats (*"affects 40% of installations"*) are weaker than single named incidents (*"the 2023 outage at Foo Corp that left 7,000 merchants offline during Black Friday"*) at producing reader engagement. Use the aggregate as backing evidence, but lead with the identifiable case.

### 6.5 System 1 / narrative coherence (Kahneman)
- **Source**: Daniel Kahneman, *Thinking, Fast and Slow* (2011), Chapter 19 ("The Illusion of Understanding").
- **Finding**: System 1 (fast, intuitive cognition) prefers coherent narratives over accurate ones. Readers automatically fill in causal connections even where none exist, and they prefer simple causal explanations to accurate complex ones.
- **Implication for technical writing**: cuts both ways. **Use**: the reader will fill in connections, so you don't have to spell out every link explicitly — economy of prose. **Beware**: the reader will *invent* causation if you imply it through sequencing. Be careful what you put next to what. Sequencing two events implies the first caused the second; if it didn't, the reader will believe a falsehood you didn't write.

## §7. Storytelling in technical-writing forms

Mini-templates for the content types where story most pays off. Use these as starting structures; adapt to the specific evidence.

### 7.1 Postmortem / incident retrospective as story
- **Source**: Google SRE Book, [postmortem culture](https://sre.google/sre-book/postmortem-culture/) and [example postmortem](https://sre.google/sre-book/example-postmortem/).
- **Beats**:
  1. **Hook**: in medias res — the moment the first alert fired. Time, system, symptom.
  2. **Stakes (early)**: who was affected, in what number, for how long. Named where possible.
  3. **Timeline as scene, not log**: each timeline entry is a beat in a narrative, not a row in a CSV. Connect with "because of that" (§4.1), not "and then." What was the responder thinking? What did they try? Why?
  4. **Turn**: the moment the team's mental model was wrong. The hypothesis that didn't pan out. The "obvious" cause that wasn't.
  5. **Resolution**: the actual fix, including the trade-offs accepted.
  6. **Takeaway**: not the action items (those are appendix). The *learning* — the new mental model the team (and the reader) has after the incident.
- **Blameless framing**: a story constraint, not a softener. Frame every responder as a smart actor doing the best they could with the information they had. The villain (if any) is the system, the incentive, or the missing telemetry — never a person.
- **What to skip**: the "and then" log of every Slack message. Use it as raw material; don't paste it as the narrative.

### 7.2 Vulnerability writeup as story
- **Beats**:
  1. **Hook**: discovery moment. *"I was reading the source of foo-bar to figure out something else when I noticed…"*
  2. **First symptom**: what was wrong, expressed concretely. The crash, the unexpected response, the leaked byte.
  3. **Mental model**: what you assumed was happening. State it explicitly. This sets up the turn.
  4. **Falsified hypothesis**: the experiment that didn't behave as predicted. *"I expected X. I got Y."* This is the curiosity gap (§6.2) widening.
  5. **Turn / root cause reveal**: the actual mechanism. The reader should feel the "oh" moment.
  6. **Exploit / impact**: what can be done with it. Stakes, concretely.
  7. **Fix**: the patch, the workaround, the mitigation. Including what doesn't fix it.
  8. **Takeaway**: the class of bug, the design pattern that produced it, what to look for elsewhere.
- **The turn is the discovery, not the exploit.** Many writeups bury the surprising mechanism and lead with the impact. Lead with the mechanism; the impact is the consequence.

### 7.3 Deep dive as Kishōtenketsu (§3.8)
- **Beats**:
  1. **Ki**: set up the system. What it is, what it does, why anyone cares.
  2. **Shō**: develop its normal behavior. Walk through the architecture; explain the parts.
  3. **Ten**: the twist. Introduce the surprising mechanism, the counter-intuitive design choice, the historical accident that explains a quirk, the constraint nobody mentions. This is the beat most deep dives skip — they go Ki → Shō → Ketsu (description, more description, summary) and produce a competent but inert piece.
  4. **Ketsu**: reframe normal behavior in light of the twist. The reader now understands the system differently than before they started reading.
- **Test**: can you state the twist in one sentence? If not, the deep dive has no turn (§2 beat 4) and will read as description, not story.

### 7.4 Opinion piece as Duarte Sparkline (§3.10)
- **Beats**:
  1. **What is**: open with the current state. Concretely — a specific practice, a specific tool, a specific failure case.
  2. **What could be**: contrast with what's possible. Concretely — a specific better state.
  3. **What is** (again): a harder case where the current state fails. Raise the stakes.
  4. **What could be** (again): how the proposed change would handle the harder case.
  5. *(optional)* a third oscillation if the argument needs it. Don't go past four; the reader feels manipulated.
  6. **New bliss**: the takeaway — what the world looks like when the change has taken hold.
- **Mark the pivots**: each "what is" / "what could be" transition should be visible as a paragraph break or a section break, not buried.

### 7.5 Tutorial with story shell
- **Beats**:
  1. **Scene of the problem** (one paragraph, max): the moment the reader will need this. Concrete.
  2. **Steps** (body): plain instructions, in the format `references/writing-rules.md` prescribes. No narration.
  3. **Scene of the result** (one paragraph, max): what working looks like, ideally with output / screenshot reference.
- **Failure mode**: turning the tutorial into a memoir. The body is steps, not story. The story is the shell.

### 7.6 ADR (Architecture Decision Record) as story
- **Beats**: Context (Ki) → Forces (Shō) → Decision (Ten — the turn is the trade-off the team accepted) → Consequences (Ketsu, including negative ones).
- **Most ADRs miss the turn**: they describe the decision without surfacing what was traded away. The reader can't learn from an ADR that doesn't say what was given up.

### 7.7 Changelog / release notes
- **Beats**: most changelogs are Minto-shaped (§3.14) and should be. But the *headlining* item in a release post (not the changelog itself) is story-shaped: hook → why this matters → what it changes → upgrade notes.

**Cross-reference**: `references/methods-of-development.md` §2 (chronological) describes timeline-shaped ordering as a structural device. This file (§7.1, §7.2) describes what makes a chronological piece *land* — scene, turn, stakes. Chronology is the spine; story is the muscle.

## §8. Storytelling anti-patterns

Add these to the Pass 5 anti-pattern scan (see `references/anti-patterns.md`). Each one is a tell that the story shape failed.

### 8.1 Buried lede
- The salient claim, the surprising fact, or the named loser appears past word 200.
- **Fix**: move it to the first 100 words. The "background first" instinct is the academic intro pattern in disguise (§5.8).

### 8.2 Info-dump before stakes
- The first three paragraphs explain what a thing is before establishing why the reader should care.
- **Fix**: invert. State the stakes first; let the explanation fall into context after.

### 8.3 Episodic "and then" sequences (Parker rule violation, §4.1)
- Transitions between paragraphs read as "and then." Each beat is *after* the previous, not *because of* it.
- **Fix**: collapse two paragraphs into one, reorder them so one causes the next, or escalate so the connective becomes "but" or "therefore."

### 8.4 Telling-without-showing
- Emotional or evaluative adjectives ("frustrated," "terrifying," "beautiful," "elegant," "obvious") used as claims rather than conclusions the reader draws from the evidence.
- **Fix**: replace each with the artifact that produced the emotion or judgment (§4.3).

### 8.5 No turn
- The post is a flat ramp from setup to conclusion. The reader's expectation is never overturned.
- **Fix**: find the surprising thing in the evidence and rebuild the structure around it. If there is no surprising thing, the post may not need to exist — recap is not analysis.

### 8.6 Missing takeaway
- The story ends but the reader doesn't know what it was *for*. The closing paragraph summarizes what was said instead of stating what to do with it.
- **Fix**: write the takeaway as one sentence: "what the reader couldn't have written before reading." If you can't, the post needs another pass at Pass 1 (value-to-whom).

### 8.7 Story bloat
- An anecdote takes 400 words to make a 1-sentence point. Pacing violation (§4.6) in the small.
- **Fix**: compress. Scene length tracks importance; if the anecdote isn't the most important beat in the post, it doesn't get the most paragraphs.

### 8.8 Writer-as-hero (StoryBrand cardinal sin, §3.13)
- The post casts the writer as the protagonist whose journey matters. "How I learned to love Y" when nobody asked.
- **Fix**: re-center on the reader. The writer is the guide. The hero is the person reading. *Or* convert to a genuine Hero's-Journey (§3.3) or Story-Circle (§3.5) piece where the writer's transformation produces a takeaway the reader needs.

### 8.9 Fake stakes
- The "loser" named in the Pass 2 ledger is the writer's pet peeve dressed up as a real loss. No actual person or system is hurt.
- **Fix**: re-do Pass 2 with the discipline from `references/multi-pass.md`. If you can't name a real loser, the post is venting, not analysis.

### 8.10 Misapplied framework
- Forcing a Hero's Journey shape onto a postmortem. Forcing a Sparkline shape onto a tutorial. Forcing a StoryBrand shape onto a deep dive.
- **Fix**: re-pick the framework in §3 against the content type table in §1. The frameworks are not interchangeable.

### 8.11 Climax without stakes
- The "turn" exists structurally but the reader has no reason to care because the stakes weren't laid in. The mechanism is revealed; the reader thinks "so what?"
- **Fix**: front-load the stakes. The turn lands in proportion to how much the reader was invested in the outcome.

### 8.12 Borrowed-trauma anecdote
- An anecdote about someone else's loss used as decoration to give the post emotional weight it didn't earn through its argument.
- **Fix**: cut. If the anecdote isn't structurally load-bearing for the argument, it's manipulation.

## §9. Verification questions (Pass 6 addendum)

Add this checklist to Pass 6 (validation) in `references/multi-pass.md`. Ten yes/no questions an editor asks of the finished draft. A "no" on any of these is a Pass 3 finding (re-shape), not a Pass 4 finding (re-draft).

1. **Hook test**: can I name in one sentence what the opening 200 words made me *want to know*?
2. **Stakes-in-scene test**: is the named loser from the Pass 2 ledger rendered in scene (specific person, time, place) somewhere in the first half of the post, rather than asserted in summary?
3. **Tension test**: is there a single sentence I can point to that names the obstacle, the broken incentive, or the mistaken assumption that drives the rest of the post?
4. **Turn test**: is there a moment in this piece where my expectation gets overturned? Can I name the sentence?
5. **And/But/Therefore test**: could I replace "and then" between any two paragraphs with "but" or "therefore"? Walk every transition.
6. **Show-don't-tell test**: pick the three most emotionally loaded sentences. Are they demonstrated (with artifact) or just asserted (with adjective)?
7. **Pacing test**: is the section containing the turn at least as long as the setup? If setup is longer than turn, the post over-prepared and under-delivered.
8. **Takeaway test**: can I quote, from the post, one sentence the reader could not have written before reading?
9. **Salience test** (echo of `multi-pass.md` Pass 6 item 15): if the reader remembers exactly one thing from this post in a week, what will it be? If "I don't know," the post lacks a salient turn.
10. **Framework-fit test**: which framework from §3 did this post pick, and does the finished draft still match it? Drift between intended and actual shape usually means the body didn't deliver the structure the hook promised.

## §10. Further reading

Canonical sources for the frameworks and findings in §3, §4, §6.

- Chip Heath & Dan Heath, *Made to Stick* (Random House, 2007). The SUCCESs framework. [heathbrothers.com](https://heathbrothers.com/books/made-to-stick/).
- Nancy Duarte, *Resonate* (Wiley, 2010). The sparkline. [duarte.com](https://www.duarte.com/resonate/).
- Carmine Gallo, *Talk Like TED* (St. Martin's Press, 2014). Three buckets: emotional, novel, memorable. [carminegallo.com](https://www.carminegallo.com/books/talk-like-ted/).
- John McPhee, *Draft No. 4* (FSG, 2017). Structure in long-form non-fiction; the bones-are-invisible discipline.
- William Zinsser, *On Writing Well* (Harper, 1976; 30th anniversary edition 2006). The plain-language and non-fiction-craft baseline.
- Christopher Vogler, *The Writer's Journey* (Michael Wiese Productions, 1992; 25th anniversary edition 2020). Hero's Journey for writers. [12 stages](https://www.storyflint.com/blog/heros-journey-christopher-vogler).
- Blake Snyder, *Save the Cat!* (Michael Wiese Productions, 2005). The 15-beat structure.
- Donald Miller, *Building a StoryBrand* (HarperCollins Leadership, 2017). The 7-part framework. [storybrand.com](https://storybrand.com/).
- Emma Coats, *Pixar's 22 Rules of Storytelling* (Twitter thread, 2012). [aerogrammestudio.com mirror](https://www.aerogrammestudio.com/2013/03/07/pixars-22-rules-of-storytelling/).
- Dan Harmon, *Story Structure 101–104* essays (Channel 101 wiki). The Story Circle. [studiobinder.com summary](https://www.studiobinder.com/blog/dan-harmon-story-circle/).
- Andy Raskin, *"The Greatest Sales Pitch I've Seen All Year"* (Medium, 2017). Name-the-enemy. [Medium article](https://medium.com/the-mission/the-best-sales-pitch-ive-seen-all-year-7fa92afaa248).
- Google SRE Book, *"Postmortem Culture: Learning from Failure"* (O'Reilly, 2016). [sre.google](https://sre.google/sre-book/postmortem-culture/).
- Paul J. Zak, *"Why Your Brain Loves Good Storytelling,"* Harvard Business Review (2014). [hbr.org](https://hbr.org/2014/10/why-your-brain-loves-good-storytelling).
- Daniel Kahneman, *Thinking, Fast and Slow* (FSG, 2011). Chapter 19 on narrative coherence.
