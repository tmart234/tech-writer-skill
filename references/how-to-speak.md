# How to Speak: What Transfers to Writing

> Notes adapted from Patrick Winston's [*How to Speak*](https://www.youtube.com/watch?v=Unzc731iCUY) (MIT, 2018). Winston's lecture is about speaking; most of it is speech-specific (rooms, lighting, slides, laser pointers, hand placement, mid-morning timing). This file captures the subset that holds up when the medium changes from a 60-minute talk to a written post. It is explicit about what does **not** transfer, because some of his advice would actively make a blog post worse.

> Source notes: [StevenMaude gist](https://gist.github.com/StevenMaude/280eadc60938ce4b6960dc60e830662d); [Overcoming Malaise summary](https://overcomingmalaise.medium.com/how-to-speak-notes-from-mit-professor-patrick-winstons-talk-5cf12fe0f8fe).

## The frame: knowledge × practice

Winston: *"Your success in life will be determined largely by your ability to speak, your ability to write, and the quality of your ideas. In that order."* He attributes the first two to **knowledge × practice**, with talent a small term. For this skill: the multi-pass architecture (Pass 1 evidence, Pass 4 draft, Pass 5 anti-pattern, Pass 6 validation) **is** the practice. Skipping passes is skipping the practice.

---

## What transfers cleanly

### 1. Open with a promise

Tell the reader what they'll know by the end. Not what the post is "about", but what they'll be able to *do* or *decide* afterward. Reinforces the "Introductions" rules in `writing-rules.md`: replace "this article will discuss..." with the specific knowledge or capability the reader walks away with.

**Bad:** *This post explores API security.*
**Better:** *By the end you'll have a one-line `nmap` command that finds every unauthenticated Redis instance on your network.*

The promise is also a contract: if the post doesn't deliver it, every reader notices.

### 2. Fence off your idea

Winston: when you introduce an idea, distinguish it from the neighboring ideas it could be confused with. In a talk this prevents listeners conflating your contribution with prior work. In writing the same discipline rules out two slop modes:

- **Vague claims** that could match anyone's opinion. Fix by naming what the claim is *not*.
- **Implicit straw-manning** ("most people think X"). Fix by naming a real proponent of X and citing them.

**Pattern:** `My claim is C. It is not C-prime [common nearby claim]. The difference is [specific axis].`

**Example:** *I'm arguing TLS 1.3 closed the ROBOT class of bugs. I'm **not** arguing it closed the broader CCA-on-RSA family; those still apply to anyone who left a 1.2 endpoint up for backwards-compat. Reference: [advisory or paper].*

This is the discipline that separates argument from vibes.

### 3. Surprise

Winston: a talk that doesn't surprise the audience won't be remembered. Paul Graham, on essays: *"The goal of an essay is to surprise the reader."* Both converge on the same rule for openers: **start at the surprising claim, not the background.** This is why §4n of `anti-patterns.md` bans the academic intro.

If the thesis isn't surprising, you don't have a post; you have a recap. Find the surprising version of the claim, or pick a different topic.

### 4. The salient idea

Winston's "Winston Star" for memorable talks: **Symbol, Slogan, Surprise, Salient idea, Story.** Three of the five (surprise, salient, story) port directly to writing.

**Salient** = one idea per post sticks out. Not necessarily the most important: the one the reader will be able to quote a week later. Test: after drafting, ask "if a reader remembers exactly one sentence from this, which sentence do I want it to be?" If the answer is "I don't know" or "the conclusion paragraph," the post lacks a salient idea. Find or sharpen one before publishing.

**Symbol/slogan** transfer weakly. A diagram or memorable phrase can work, but most "slogans" in technical writing read as marketing. Prefer a sharp single sentence stated once, in its strongest form, as the salient idea.

### 5. Story as the unit of teaching

Winston argues storytelling is how humans learn to think. He gives five elements you owe a learner:

1. **Stories they need to know**: the cases, incidents, CVEs, papers, war stories.
2. **Questions they need to ask about those stories**: what to interrogate when they encounter a new one.
3. **Mechanisms for analyzing those stories**: frameworks (STRIDE, ATT&CK, threat-modeling diagrams, RCA templates).
4. **Ways of putting stories together**: how findings combine; how patterns across cases emerge.
5. **Ways of evaluating how reliable a story is**: the epistemics: how to spot a vendor-press-release version vs. a reproducible-PoC version (cross-reference §6c of `anti-patterns.md` on theoretical-vs.-PoC-vs.-wild-vs.-KEV).

This is the structure of a good **deep-dive** post. The five elements map onto: case studies → reading questions → analysis framework → cross-case synthesis → reliability check. If a deep dive only delivers (1) and stops, the reader can't apply the content. If it delivers (3) and (4) without (1) and (2), it's an abstract framework with no teeth.

**Cross-reference for talk-shaped writing**: Winston's "story as the unit of teaching" is the *functional* form of story (cases as evidence, framework as instrument). For the *craft* form — narrative arc, scene construction, the five-beat skeleton, opening hook taxonomy — load `storytelling.md`. The Nancy Duarte Sparkline framework in `storytelling.md` §3.10 is the talk-shaped expansion of Winston's salient-idea / surprise / story trio: it gives you the contour (oscillation between "what is" and "what could be") that carries a 60-minute talk or a 3,000-word opinion piece.

### 6. Vision = problem they care about + something new

Winston's rule for academic job talks: in five minutes, demonstrate (a) the problem matters to the audience, and (b) your approach is novel. Both halves are required. Without (a), the audience tunes out; without (b), there's no contribution.

**Direct port to opinion/analysis posts.** A post arguing "X is broken" needs both:
- a **problem the reader already has** (or will have, demonstrably soon), and
- a **novel angle**: a new diagnosis, new evidence, a new fix, or a new framing. Not just a restatement of the consensus take.

If a draft fails (a), it's solving a problem nobody has. If it fails (b), it's a recap dressed as analysis. Both fail the quality rubric's Directness and Trust dimensions.

### 7. Practice with non-experts

Winston: practice your talk with an audience that **isn't** expert in your work and is unafraid to criticize. The same rule applies to technical writing: get a reader from one or two specialties over (a backend engineer reading your kernel post; a generalist appsec engineer reading your cryptography post). Subspecialty experts will paper over your unclear paragraphs from context they already have. Non-experts can't, so they surface them.

This matters most for the **why** sentences, the load-bearing claims about why a design is wrong or a vulnerability matters. Non-experts catch hand-waving that experts auto-fill.

### 8. End strong

Winston on closing slides: don't end with "Conclusions," "Questions?," "Thank You," or a URL. Use **Contributions** (what you added) or a **call to action** or a **salute** (express what the work meant). The same rules port to writing closers. Cross-references in this skill:

- `writing-rules.md` §"Don't repeat yourself": no recap closing paragraphs.
- `anti-patterns.md` §3d (closing boilerplate), §4j (announcing the conclusion), §7 (zero closing exhortations).

Winston's positive replacements adapted for writing:

- **Contributions closer**: end on the specific, concrete thing the post contributed: a tool, a measurement, a CVE, a framework. *"The fuzzer is at github.com/x/y. It found the three CVEs above; PRs welcome on the parser harness."*
- **Call-to-action closer**: end on the one command, grep, or change the reader should run today. Concrete, not exhortatory. *"Run `grep -rn 'verify=False' .` across your codebase. If anything matches, you're disabling TLS verification."*
- **Sharpest-sentence closer**: end on the post's strongest single sentence, usually the one you'd pick as the salient idea (§4 above). Stated once, no amplification.

Never the **"thank you" closer**, which Winston flags as implying "the audience stayed out of politeness." Same energy in writing: "thanks for reading" implies the post wasn't worth the time on its own.

---

## What does NOT transfer, and why

### Cycling round a topic (DO NOT IMPORT)

Winston's most-emphasized speaking technique: state the same idea several times across the talk so that listeners who zoned out can catch up. This works in speech because **the listener can't rewind**.

In writing, the reader **can** rewind; it's the default mode. Cycling the same claim across paragraphs becomes the **restatement loop** (`anti-patterns.md` §4g) and the **summary paragraph** (§4h). Both are slop. The skill's rule overrides Winston's here: state each point once, in its sharpest form. If the reader missed it, they'll scroll up.

### Verbal punctuation (PARTIAL, already covered)

In speech, verbal punctuation = saying "now we're moving on to point three" so listeners who drifted can re-orient. In writing, **headings do this job** without prose. The skill already requires headings every 200–300 words. Don't add verbal-punctuation prose on top of headings; that's the rehash transition (`anti-patterns.md` §4i).

### Asking the audience a question (HANDLE WITH CAUTION)

Winston suggests rhetorical questions to wake the audience up. In writing this becomes the **interrogative heading** ("What is XSS?"), capped by `anti-patterns.md` §7 at one per post. Inline rhetorical questions in body text are weaker still; usually the answer in declarative form is sharper. *"What does this mean for your network?"* almost always reads better as *"This means your network is affected if..."*

### Speaking environment (SKIP)

Time of day, room size, lighting, props, slides, laser pointers, hand placement, board vs. slide, empathetic mirroring, the joke-vs.-empowerment-promise opener choice: all about **the room and the speaker's body**. Nothing to import. The blog-writing equivalent of "check the room before speaking" is "preview the rendered Jekyll output before publishing," which the skill already implies.

### Joke as conclusion (CONTEXT-DEPENDENT)

Winston says jokes can close a talk well; "thank you" cannot. In writing, the analog is much weaker. Most attempts at humor in technical posts read as forced. Use only if it's genuinely your voice (Patrick McKenzie, Matt Levine, rachelbythebay can pull it off; most can't). If unsure, default to the contributions or call-to-action closer (above).

---

## Summary table: apply or skip

| Winston principle | Writing analog | Apply? |
|---|---|---|
| Promise upfront | Concrete reader-capability statement in intro | **Yes** |
| Cycle round a topic | (would become restatement loop) | **No (banned)** |
| Fence off your idea | Distinguish claim from nearby claims | **Yes (new)** |
| Verbal punctuation | Headings every 200–300 words | Already covered |
| Ask a question | Rhetorical Q (max 1 heading-as-Q) | **Cap** |
| Inspiration via passion | Voice/opinion in the prose | **Yes** |
| Situating | Contextualize the problem | Already covered |
| Practice with non-experts | Get out-of-subspecialty review | **Yes (new)** |
| Time/room/slides | n/a | **Skip** |
| Story = 5-element teaching | Deep-dive structure | **Yes (new)** |
| Vision = problem + novelty | Opinion-post structure | **Yes (new)** |
| Symbol / slogan | Diagram / memorable phrase | **Weak / optional** |
| Surprise | Cold open at thesis | Reinforces existing rule |
| Salient idea | One quotable sentence | **Yes (new test)** |
| End on contributions | Concrete artifact closer | Reinforces existing rule |
| End with thank-you | (banned) | **No (already banned)** |
| End with joke | (rarely works in writing) | Caution |
