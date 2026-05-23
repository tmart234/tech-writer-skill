# Core Writing Rules

> Load this file before the Draft pass (Pass 4) and apply all of it. SKILL.md's *Core writing rules* section carries the index; this file carries the full set. Companion files: `anti-patterns.md` (what to scan a finished draft for), `how-to-speak.md` and `craft-of-writing.md` (the rhetorical theory behind several of these rules).

These are non-negotiable regardless of content type.

**Plain language defaults:**
- Default to short, common words. If a one- or two-syllable word does the job, use it. Reach for a four-syllable word only when no shorter word fits.
- Voice test: read the sentence out loud. If it sounds like a textbook or a press release, rewrite it. If it sounds like how you'd actually say it to a friend who works in a different field, you're close.
- "Hard words" earn their place. Technical terms (`XSS`, `RCE`, `SIGSEGV`) are fine; they're the vocabulary of the field, and a 201 reader expects them. But fancy *non-technical* words (utilize, leverage, robust, comprehensive, paradigm) almost never earn their place. Cut them.
- The test: if you can swap a word out for something simpler without losing meaning, do it. "Use" beats "utilize" every time. "Show" beats "elucidate." "Start" beats "commence." The simpler word is almost always the right one.

**Acronym and jargon discipline:**
- **Define every acronym on first use** unless the post is a 301-level deep dive and the acronym is core vocabulary in the field. Pattern: spell it out, then put the acronym in parens. *"Server-Side Request Forgery (SSRF)."* After that, use the acronym freely.
- **Don't introduce more acronyms than the reader can hold.** If a single paragraph defines three new acronyms, the reader has stopped tracking. Spread them out, or pick fewer.
- **Cap on undefined acronyms: zero.** If you use an acronym you haven't defined in the post, the reader either knows it (in which case you didn't need the acronym anyway, you needed the concept) or they don't (in which case you just lost them). Define it or replace it.
- **Re-anchor long acronym chains.** If a post uses a term repeatedly across many sections, occasionally drop the full term back in. Reading "HSTS" forty times in a row makes the reader forget what it stood for.
- **Borrow the reader's vocabulary, don't make them learn yours.** See "Word choice" below for the longer version.

**Every new idea earns its place. Answer "why does the reader care?":**
When you introduce a new concept, term, framework, attack pattern, or piece of vocabulary, the reader should be able to answer *why is this in the post?* within one or two sentences of meeting it. Three failure modes:
- *Name-dropping:* "We can model this using the Diátaxis framework." Why does the reader care about Diátaxis? If the rest of the section doesn't use it for something the reader can take home, cut the name.
- *Jargon-flexing:* "This exhibits the classic A-DT-1 anti-pattern." If the reader has to take it on faith that A-DT-1 matters, rewrite.
- *Tangent-creep:* a paragraph on a related-but-non-essential topic. If you can delete it and the post still works, delete it.
The fix is mechanical: after each new concept, write one sentence that answers *what does this let the reader do, decide, or notice that they couldn't before?* If you can't write that sentence, the concept doesn't belong in the post (or doesn't belong yet).

**Voice and mechanics:**
- Active voice, second person ("you"). Present tense for current behavior.
- Use contractions; they match how the audience talks.
- One idea per sentence. One topic per paragraph. Opening sentence sets focus.
- Sentence length: vary actively. Mix 8-word punches with 25-word explanations. Never three sentences in a row of similar length.
- **Staccato is a tool, not a default.** Clipped sub-five-word sentences deliver contempt and emphasis as rhythm (*"This is a choice." "Everything else is noise."*), doing what an adjective can't. But a run of them becomes its own metronome, the same tell as uniform-long prose. Cap: no more than three sub-five-word sentences back to back.
- Put conditions before instructions: "If the file exists, delete it." Not the reverse.
- **Fence off your idea.** When you make a non-obvious claim, say what it is *not*, so the reader doesn't confuse it with a nearby claim. Pattern: *"My claim is C. It is not C-prime. The difference is [specific axis]."* This is what separates an argument from a vibe. (See `how-to-speak.md` §2.)
- **Coin names for repeated phenomena.** When you find yourself describing the same thing for the third time without a name, name it. The name becomes a tool: reuse it across the next two or three posts. Security writing is full of these: "security theater," "movie-plot threat," "built-in vs. bolted-on," "secure by design," "one bite at a time." Names are the cheapest SEO and the strongest concept-stickiness move you have. Test the name by reuse: if you can't pull it into the next two posts, it's not a name yet, it's a phrase. Names also seed the next post (see "Pipeline Thinking" in SKILL.md).
- **Pick analogies by audience.** One analogy per major claim, picked for the reader's domain. Engineering metaphors for engineers, everyday objects for executives, household appliances for the general public. A good writer uses a different metaphor for the same concept depending on the reader: a plumbing metaphor for a general audience, a queueing-theory metaphor for engineers. Same concept, different audience, different metaphor. Don't import jargon to a layperson; don't reach for kitchen metaphors with engineers. If the analogy doesn't sit inside the reader's existing mental furniture, cut it. Stacking three analogies for the same claim is a tell that none of them is doing the work.

**Word choice:**
- "use" not "utilize/leverage." "start" not "commence." "so" not "consequently."
- One word = one concept. Don't alternate "server" and "machine" for the same thing.
- "primary/replica" not "master/slave." "blocklist/allowlist" not "blacklist/whitelist."
- Never write "etc." Enumerate items or use "such as."
- **Borrow the audience's existing vocabulary.** When writing for a regulated or established-vocabulary audience, hijack their terms-of-art rather than importing new ones. When you coin a term, build it on a phrase the audience already accepts, so the new term rides on existing legitimacy and the audience's existing categories. Reuse the reader's mental furniture; don't make them learn yours unless the new term is doing real work the existing vocabulary can't.

**Don't repeat yourself:**
- Each point gets made once. If the next sentence paraphrases the previous one, cut one of them. Keep the sharper version.
- No summary sentences that restate what the paragraph already said. The reader just read it.
- Sections end on their last substantive claim. No "in this section, we covered..." recaps. No closing paragraphs that re-announce the section's argument.
- Transitions don't rehash the previous section. Start the next one and trust the reader to follow.
- "In other words," "to put it another way," "as mentioned earlier," "to reiterate": all signals of a restatement. If the original wasn't clear, rewrite it; don't tack on a second version.
- Topic sentence + evidence + implication is complete. A fourth sentence telling the reader what they just learned is filler.
- One example per point is usually enough. A second example only earns its place if it demonstrates something the first couldn't.
- **Don't cycle.** Speaking advice ("repeat the point at different times in the talk") does not transfer to writing; the reader can scroll back. Cycling the same claim across paragraphs becomes the restatement loop, which is slop. State each point once, in its sharpest form. (See `how-to-speak.md` "What does NOT transfer.")

**Structure:**
- One H1 per page (from Jekyll `title`; never repeat in body). Body starts at H2.
- Target 3–5 H2 sections per standard post. Never skip heading levels.
- Headings every 200–300 words. Procedures capped at 12 steps.
- Bold/hyperlinks capped at ~10% of article text.
- Internal links: 3–5 per 1,500 words, descriptive anchor text ("our guide to Docker networking", never "click here").
- **Every heading is a promise.** The section delivers exactly what the heading says. If it doesn't, either rewrite the section or rewrite the heading.
- **Link, don't inline.** If content belongs to a different content type (a how-to's "why" belongs in explanation; a deep dive's "fix it" belongs in a how-to), link to the other post instead of smuggling it in. This is the single most effective discipline for keeping types clean.

**Code blocks:**
- Always specify language identifier (`python`, `bash`, `yaml`; never bare backticks).
- Keep inline blocks to 10–20 lines focused on one concept.
- Show filename above block when relevant: `**File: docker-compose.yml**`
- Include expected output so readers can verify.
- Every example must be runnable and secure. Never include credentials or known-vulnerable patterns.
- Short snippets (<15 lines): inline comments for "why" not "what." Longer: annotate in prose.
- Show simplest version first, then production-ready (progressive disclosure).

**Introductions (you have 15 seconds):**
- Three jobs an intro must do (adapted from Winston, see `how-to-speak.md` §1–3): **promise** (name the specific capability the reader walks away with); **surprise** (open at the thesis, not the background); **fence** (if the thesis is non-obvious, distinguish it from the nearby claims it could be confused with).
- **Construct instability, don't provide stability.** A good intro names something the reader currently believes is settled and shows it isn't (McEnerney's stasis pattern, see `craft-of-writing.md` §4–5). The signal vocabulary: *but, however, although, yet, despite, anomaly, inconsistent, contradicts, fails to, breaks down, leaves open.* If the intro contains none of these words, it's almost certainly delivering background instead of a problem.
- **Open with a concrete artifact, not an abstract claim.** The first sentence names a specific thing: a CVE ID, a device model, a regulatory document, a packet capture, a measurement, a dated incident. Then abstract from it in sentence two or three. The artifact carries the surprise; the abstraction carries the analysis. An intro that opens at the abstraction level fails the surprise test even when the claim is genuinely surprising: abstractions don't *land* without something concrete to peel them off of.
- **Three-beat intro pattern:** *instability* (what the reader assumed, that isn't true) → *cost to the reader* (why this matters to them, not to you) → *promise* (what the post lets them do).
- Open with 2–3 sentence problem statement (what hurts, what's broken).
- State what the reader will learn or be able to do.
- Set expectations: prerequisites, code examples, time investment.
- Pattern that works: "I struggled with X → figured out Y → here's what helped."

**Closers (you have one more chance):**
The hard cap stays: zero closing exhortations, zero "stay vigilant," zero "in conclusion." But the absence of a bad closer is not the presence of a good one. Three patterns earn their place; outside these three, end on the last substantive claim and let silence do the work.
- **Prescription-or-refusal** (Schneier). Frame the actual choice the reader has to make and refuse to soften it. *"Our choice is smarter regulation versus stupider regulation."* The closer doesn't exhort; it lays out the binary the reader is already in. Earns its place when the post has done incentive analysis and the choice follows from it.
- **Catchphrase reuse.** If the post coined a name (see "Coin names for repeated phenomena") or used one that earned its place, land it once more at the close. *"Bolted-on security stays bolted-on. Build it in."* Reinforces the salient idea by repetition without restatement. Earns its place when the named handle is genuinely the post's contribution.
- **Specific call-to-action** (Wirth/Gates). Ask the reader to do one specific thing they can actually do this week: file a CVE, audit one config, write to a named standards body, cite a specific clause in their next procurement doc. Generic "stay vigilant" or "rethink your approach" still fails. Earns its place when the action is *narrow* and *available* to a reader of this post specifically.

**Why this differs from generic blog advice.** Industry primers — freeCodeCamp, Hashnode, IEEE, most "how to write a tech blog" content on the open web — all mandate a closing CTA: subscribe, follow, share, comment. Those primers are calibrated for marketing-funnel audiences whose readers are being converted into followers or leads. This skill targets practitioners reading for evidence and decisions. A generic CTA in that context reads as marketing residue and signals *"the writer wanted my follow, not my understanding."* Trust drops. The three earned patterns above are the deliberate substitute: a named prescription, a coined name landed once more, or an action anchored to the post's content. The action lives in the reader's week, not in the writer's funnel.

**Security content specifically:**
- Never describe a threat without describing the defense.
- Quantify risk with data: "affects 12% of default Nginx configs" beats "devastating."
- Distinguish theoretical from actively exploited vulnerabilities.
- Always include actionable remediation with affected versions.
- **Problem-in-the-world ≠ problem-in-the-reader** (McEnerney, see `craft-of-writing.md` §6). A vuln writeup describes a problem in the world (the bug). The blog post earns its existence because of the problem in the reader's understanding (what they currently believe that they shouldn't, or what they don't yet know that changes their next decision). A writeup that nails the bug but skips the reader-side change is a CVE database entry, not a post.
- **For vulnerability writeups**, lead with a header block that lets a reader answer "am I affected?" in 10 seconds: CVE ID, CVSS v3.1 vector + score, CWE, affected versions, patched version, discoverer, disclosure-timeline summary. Then a 2–4 sentence TL;DR (bug class, where, impact, fix) before any background. Root-cause code snippets get filenames and line numbers; the bug class is named explicitly (type confusion, UAF, integer overflow, deserialization RCE). Patch analysis shows the diff and whether variants remain.
- **Keep vuln writeups lean.** If you want to editorialize about bug-class prevention, vendor response, or disclosure norms, write a companion opinion post and cross-link. Don't mix RCA with hot take.
