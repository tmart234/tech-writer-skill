# Craft of Writing Effectively: what transfers to technical blogging

> Notes adapted from Larry McEnerney's *The Craft of Writing Effectively* ([UChicago Leadership Lab](https://www.youtube.com/watch?v=vtIzMaLkCaM); [handout PDF](https://cpb-us-w2.wpmucdn.com/u.osu.edu/dist/5/7046/files/2014/10/UnivChic_WritingProg-1grt232.pdf)). McEnerney's lecture is aimed at academic writers; most of the framework holds up in technical blog writing because the underlying constraint is the same: readers who aren't paid to care, who will stop reading the moment the text fails to deliver value to *them*. This file captures the subset that ports cleanly, and is explicit about what does **not** transfer or where the skill's existing rules already apply McEnerney's principle better-suited to the medium.

> Companion file: `how-to-speak.md` (Patrick Winston). Winston and McEnerney converge on several points (surprise, salient idea, vision = problem + novelty); where they overlap, McEnerney is usually the deeper formulation and the cross-reference notes which file owns the canonical version.

## The frame: value lives in readers, not in the work

McEnerney's central claim, which reframes everything else: **a piece of writing is not inherently valuable.** Value lives in the reader. A post is valuable to a specific community of readers who find it useful for their purposes, and worthless to everyone else. There is no neutral "good writing" that floats free of an audience.

For this skill, that means:

- The persona ("principal security engineer talking to a smart colleague") and the diátaxis content-type classification are not stylistic choices. They're decisions about **which community of readers** the post is being valuable to. Ambiguity here propagates: a post written to "appsec engineers and CISOs both" usually serves neither.
- The quality rubric scores how the draft will land *with that audience*. A draft that scores 70/70 against the wrong audience still fails its function.
- Most of the rest of the skill (anti-patterns, voice rules, structural caps) is calibrated to a specific reader: technical engineers reading a security/engineering blog. The rules look universal but they aren't; they're this audience's CODE. (See §3 below.)

---

## What transfers cleanly

### 1. Writing process ≠ reading process

McEnerney's diagnosis of why expert writing fails: writers use the writing process to **think**, to figure out what they believe and why. Readers use the text to **change how they see the world**. These are orthogonal processes, and a draft that follows the writer's thinking process forces the reader to retrace it. The reader slows down, re-reads, misunderstands, gets aggravated, stops.

The implication for this skill: **the post you wrote to figure out the topic is not the post your reader needs.** The first draft almost always reflects the writer's discovery path: what surprised the writer, in the order it surprised the writer. A reader who didn't share the discovery doesn't care about the order.

This is the failure mode Pass 3 (validation) exists to catch. When checking sentence-level edits, also check structural ones: does the post open at the salient claim, or at the writer's chronology of investigation? A "first I tried X, then I tried Y, then I found Z" structure may be true to the investigation but is almost always wrong for the reader. Restructure to deliver Z first; demote X and Y to a "what didn't work and why" section if they're load-bearing.

### 2. The four desiderata: Clear, Organized, Persuasive, Valuable

McEnerney: most writing advice gives three goals: Clear, Organized, Persuasive. He adds Valuable, and argues it's the gate the others can't pass through. *"If it's organized and useless, it's useless. If it's persuasive and useless, it's useless."*

Direct port to this skill's quality rubric. The five existing dimensions (Directness, Rhythm, Trust, Authenticity, Density) score the surface; the rubric assumes a valuable topic. McEnerney's frame is the prior question: **before scoring on those five, ask whether the post is valuable to its target reader at all.**

The vision test (problem the reader has + novel angle) is the operationalization of "valuable" for opinion posts. McEnerney's contribution is generalizing that test to every content type. Even a tutorial fails if the reader doesn't have the underlying need ("How to set up an mTLS proxy" is useless to a reader whose architecture doesn't justify mTLS at all). Even a deep dive fails if the reader doesn't already care about the system being explained.

**Concrete check during Pass 0:** before evidence-gathering, write one sentence: *"This post is valuable to [specific reader] because [specific change in how they think or act]."* If you can't fill in either bracket, you don't have a post yet.

### 3. The CODE: community-specific value vocabulary

McEnerney: every reading community has its own "code": words and phrases that signal value to insiders. Persuasion *is* mastery of that code. He recommends a daily practice: spend 15 minutes reading articles in your field with a pen, circling every word that's making value (not stating fact). Build a list. Then check your own drafts for those words; if they're absent, you're writing outside the code.

This skill targets a specific community: **engineers who read security/infrastructure technical writing.** Their code is mostly evidence-words and risk-words: CVE, CVSS, CWE, KEV, in the wild, exploited, advisory, bypass, root cause, variant, regression, supply chain, threat model, blast radius, capability, primitive, gadget, sink, source, taint, sandbox escape, privilege boundary, attack surface. It's also negative-evidence words that mark intellectual seriousness: theoretical, unproven, vendor-only, unreproduced, no public PoC.

The anti-patterns reference (§1, Tier 1 vocabulary) is the inverse exercise: the skill's catalog of words that *destroy* value with this audience (delve, leverage, robust, seamless, etc.). Both lists are CODE artifacts. Anti-patterns enumerate what to avoid; this section enumerates what to include.

**McEnerney's resolution of the rules-vs-value tension:** McEnerney warns against treating rules as primary because rules vary by community: a rule that creates value for one audience destroys it for another. This skill's rules don't contradict that warning; they *implement* it. Every rule in `SKILL.md` and `anti-patterns.md` is calibrated to this specific audience's CODE. A rule like "never use 'leverage'" isn't a universal; it's a fact about how this audience reads "leverage" (as marketing vapor). For a different audience the rule could invert.

### 4. Instability is the engine of value

McEnerney's most concrete contribution: **the words that signal value are the words that signal instability.** A few:

- **Tension words:** but, however, although, yet, despite, nonetheless
- **Defect words:** anomaly, inconsistent, contradiction, incomplete, unresolved, missing, fails to, doesn't fit, breaks down
- **Stake words:** at risk, exposed, vulnerable, costs, leaves open, allows, enables (an attacker)

A post stuffed with these words isn't automatically valuable, but a post that contains *none* of them is almost certainly delivering background or recap, not constructing a problem the reader needs solved. During Pass 1 (drafting) and Pass 3 (validation), search the draft for these words; their absence in the intro is a strong signal that the intro is doing the academic stability move (background → thesis) instead of constructing instability → solution.

**Pattern for technical blog intros (adapted from McEnerney's Problem grammar):**

```
[Instability]: Something the audience accepts as settled is not settled.
              ("The standard mTLS guidance assumes the client validates
               the server's chain. In half of deployed Go HTTP clients,
               that assumption is wrong.")
[Cost]:       Why that matters to this reader.
              ("If you're behind one of these clients, you have an
               unauthenticated channel that looks authenticated in your
               logs.")
[Solution]:   What this post lets them do.
              ("Here's the audit query and the patch.")
```

Compare to the academic-stability anti-pattern (the cardinal sin in §4n of `anti-patterns.md`): *"mTLS is a widely-used protocol for mutual authentication between client and server. It relies on certificate chains. In this post, I'll discuss certificate validation in Go."* This says nothing the reader didn't know and constructs no instability. It's background dressed as an intro.

### 5. Stasis vs. background: they look the same, they aren't

McEnerney's sharpest single distinction. Both "background" and "stasis" present something the reader is supposed to accept as true. The difference is what happens next:

- **Background:** Writer presents X as true so the reader can build on it. X must remain stable through the post. The reader leaves believing X.
- **Stasis:** Writer presents X as true *only to knock it down*. X looks settled at the start of the paragraph and is destabilized by the end. The reader leaves no longer believing X.

Sewell's example from the handout (*"Ever since Herodotus, historians have written about events..."*) looks like background but is stasis: the apparent stability ("settled, since antiquity") is set up so the next paragraph can destabilize it.

Direct port to security writing. A post about a protocol weakness can open with what looks like background (*"OAuth 2.0 has been the standard authorization framework since 2012..."*) but only earns the opening if the next sentence destabilizes (*"...and almost every implementation gets redirect-URI validation wrong."*). If the second sentence reinforces the first instead of subverting it, the opening is true background, not stasis, and the post is doing the wrong thing.

**Editing test:** for any block of "background" in the intro, ask: is this here because the reader needs it as a base for the rest of the post, or is this here so I can destabilize it next? If neither, cut it. If background, ask if it really needs to be in the intro vs. inline later. If stasis, make sure the destabilizing sentence lands hard and immediately.

### 6. Problems in the readers vs. problems in the world

McEnerney: a paper about 19th-century industrialization does not *fix* 19th-century industrialization. The function of academic writing is to solve a problem in the *readers' understanding*, not a problem in the world the reader is studying.

Direct port. This one is load-bearing for security writing, because security posts almost always describe problems in the world (a bug, a misconfiguration, an attack technique). It's easy to slide from describing a problem-in-the-world to writing as if the post itself fixes that problem. The post does not patch the bug. The post changes how the reader thinks about the class of bug, or about their own systems, or about a control they assumed was working.

**Two questions every security post must answer separately:**

1. **What is the problem in the world?** (the bug, the misconfig, the attack)
2. **What is the problem in the reader's understanding?** (what they currently believe that they shouldn't, or what they don't yet know that changes their next decision)

A vuln writeup that nails (1) but skips (2) is a CVE database entry, not a blog post. The blog version of the same content earns its existence because of (2): the reader walks away with a different model of how X-class bugs occur, or which of their own systems they should now check, or which control they were over-trusting.

This is the strongest articulation of why the skill's "for vulnerability writeups" guidance demands a TL;DR ("am I affected?"): the TL;DR is the problem-in-the-reader. Without it the post is just describing a problem in the world.

### 7. Gap vs. error problems

McEnerney distinguishes two ways to construct instability, with different reader-skepticism profiles:

- **Gap problem:** "There's something missing from the community's knowledge of X." Pressure point: cost/benefit. Readers ask *why does this gap matter?* Filling a gap that has no consequences is unread.
- **Error problem:** "Something the community currently believes about X is wrong." Pressure point: existence of the error. Readers ask *are you sure it's actually wrong?*

Choose based on which pressure you're equipped to meet. For technical blog content:

- **Gap problems** are common in tooling posts and surveys, for example: *"there's no good open-source tool for X."* They work when the absence has a real cost (lost research time, missed detection coverage, repeated bugs). They fail when the absence is only "I personally would like one."
- **Error problems** are common in opinion/analysis and vuln writeups, for example: *"the standard guidance for X is wrong."* They work when the writer has concrete evidence the standard is wrong (a CVE, a measurement, a code path). They fail when the writer has only an opinion.

Most strong opinion posts are error posts in disguise. If the draft frames itself as "X is missing" but really argues "X is being done wrong," reframe it explicitly as an error post: the case is sharper and the cost/benefit pressure is lower.

McEnerney also warns: many academic communities use "gap" language for what are really error claims, because gap-language is less confrontational. Same dynamic in security writing. *"There hasn't been much analysis of X"* is often a softened version of *"the existing analysis of X is wrong."* When you spot this in your own draft, the bolder version is usually the better post.

### 8. "Don't explain. Change their ideas."

McEnerney's bluntest line: *"Explaining is revealing what's inside your head. No one cares what's in your head."*

This is sharper than the skill's existing "statements that teach or argue" rubric and sharper than the anti-pattern §4d ("the announcement"). The reframe: every paragraph should be doing something *to the reader*: installing a new model, dislodging an old one, supplying a primitive they need to make the next decision. Paragraphs that exist to "share what I learned" or "walk through how this works" without targeting a reader-side change are explaining, not arguing.

**Test during Pass 3:** for each paragraph, ask *what does the reader believe or do differently after reading this that they didn't before?* If the answer is "they now know the thing I knew," the paragraph is explaining. Either tighten it to the reader-side change or cut it.

This applies most strongly to deep dives, the content type most prone to "let me show you all the cool stuff I figured out." Deep dives can absolutely be valuable, but only when the cool stuff is in service of changing how the reader thinks about a system, not when it's narration of the writer's discovery process.

### 9. Feedback question reframe

The skill already references Winston's "practice with non-experts" rule (`how-to-speak.md` §7). McEnerney sharpens the question to ask non-experts:

- **Weak:** *"Tell me what's unclear."* This surfaces sentence-level confusion. Useful, but limited.
- **Strong:** *"Tell me where you stop seeing why this matters."* This surfaces value-construction failure. Where does the reader stop tracking the post's significance?

These produce different feedback. The first finds typos and tangled sentences. The second finds the paragraph where the reader gave up trying to figure out why they should care. The second is more useful, especially for opinion and deep-dive posts.

McEnerney's reframe of why this matters: readers tell you what *isn't there*, not what's there but unclear. The rare reader who can articulate "I lost the thread of significance at paragraph 3" is gold. Train your reviewers to look for that.

### 10. Lit review = enriched problem, not catalog

McEnerney on the lit-review section of academic papers: the wrong way is *"In 2001 he said this, in 2002 he said this, in 2005 he said this..."*, a catalog meant to demonstrate the writer has read everything. The right way uses the same content to **enrich the problem**: *"In 2001 he said this, but in 2004 we realize that complicates it, and in 2005 he said this, which complicates it further..."*

For technical blog writing the closest analog is the "prior art" or "what others have done" section. Same rule: cataloging prior writeups, tools, or research is filler. Each prior reference earns its place only if it deepens the instability the post is constructing, as in: *"the existing tools handle case X but not case Y, and case Y is exactly what's growing in deployment."* If the prior-art section reads like a literature review for a thesis advisor, cut it back to the references that sharpen the problem.

### 11. The cost is the reader's, not the writer's

McEnerney: a common failure mode is writers describing costs *they* bear (this took me weeks to figure out, this was hard to debug) and treating that as motivation. The reader doesn't care about the writer's costs. The reader cares about *their own* costs.

Same trap in technical blogs. *"I spent three weeks reverse-engineering this binary"* is writer-cost. *"If you don't know this primitive exists, your detection rules miss the entire family of variants"* is reader-cost. The first is a war story; the second is a reason to keep reading. Use writer-cost only when it's evidence of difficulty (signaling to the reader that the topic is harder than it looks), not as motivation in itself.

---

## What does NOT transfer, and why

### "Forget the rules, focus on value" (PARTIAL: handled by reframing)

McEnerney repeatedly tells writers to ignore rules and focus on value. Taken naively, this contradicts a rules-heavy skill. The resolution (covered in §3 above): the skill's rules are calibrated to a specific audience's CODE. They aren't competing with value; they implement it for this audience. McEnerney's warning applies when rules are imported from outside the audience's actual reading practices (e.g. forcing passive voice because a freshman comp class said so). The skill's rules are derived from how engineers read security blogs, so they pass McEnerney's test.

The one case where the skill's rules genuinely conflict with value-for-this-audience: when a specific post needs to do something the rules don't cover, or when a rule's edge case produces a bad result. Rules in this skill are guidance, not fences. Value is the supreme criterion. If a rule is producing a worse post for this audience, override the rule for that post. (But: verify it's actually producing a worse post, not just feeling restrictive in the moment.)

### Academic apparatus: dissertations, journal articles (ADAPT)

Lit review (handled in §10), problem statements as multi-page sections, the "contribution-to-the-field" framing: all need adaptation, not direct port. Blog readers don't expect the apparatus and will read it as overkill. The principles (instability, problem-construction, value-for-readers) port; the formats don't.

### Knowledge-as-consensus epistemology (CONTEXT-DEPENDENT)

McEnerney spends significant time on the philosophy that knowledge is constructed by communities, not discovered in the world. Useful framing for academic writing where the goal is to advance a discipline. Less useful for technical blog writing where the audience usually wants a specific operational improvement (a detection, a fix, a model). Don't import the meta-philosophy; do import the operational consequence (write to a specific community, learn its CODE).

### "Always state a problem" (HANDLE WITH JUDGMENT)

McEnerney allows two exceptions: (a) the writing is so engaging that readers read for pleasure, and (b) the audience already knows the problem so well it doesn't need restating. Both apply rarely. For technical blogs, exception (b) is the more common claim writers make (*"my readers already know why TLS misconfiguration is bad, I can skip it"*), and is usually wrong. Even sophisticated readers benefit from the specific framing of *this* instance of the problem; "they already know" usually means "I'm too lazy to construct it."

The exception that does sometimes apply: tutorial posts targeting a reader with an explicit pre-existing need (*"how to set up X"*, where the reader already wants X). For tutorials, the problem is the reader's intent, and constructing additional instability is overkill. Lead with the steps.

### Symbol/slogan (already covered)

Cross-reference: `how-to-speak.md` §4 already covers this. McEnerney doesn't add to it.

### Non-fiction style at the sentence level (SKIP)

McEnerney spends little time on prose mechanics: sentence rhythm, word choice, paragraph structure. The skill's existing voice rules and `anti-patterns.md` cover this layer. McEnerney's contribution is at the structural and rhetorical layer above sentences.

---

## Summary table: apply or skip

| McEnerney principle | Writing analog | Apply? |
|---|---|---|
| Value lives in readers, not work | Pass 0 valuable-to-whom sentence | **Yes (new)** |
| Writing process ≠ reading process | Pass 3 structural restructuring check | **Yes (new)** |
| Clear/Organized/Persuasive/Valuable | Quality-rubric prior question | **Yes (new)** |
| The CODE | Audience-specific vocabulary, security-blog code list | **Yes (new)** |
| Instability vocabulary | Positive word list for intros (but, however, anomaly, inconsistent) | **Yes (new)** |
| Stasis vs. background | Editing test for intro background blocks | **Yes (new)** |
| Problem in readers vs. world | Vuln writeup TL;DR earns its place; required for security posts | **Yes (new)** |
| Gap vs. error problem | Choose pressure profile; default to error for opinion posts | **Yes (new)** |
| Don't explain: change their ideas | Pass 3 paragraph-level test | **Yes (new)** |
| Feedback: "where do you stop seeing why this matters" | Reviewer prompt | **Yes (new)** |
| Lit review enriches problem | Prior-art section discipline | **Yes (new)** |
| Reader's costs, not writer's | Motivation framing | **Yes (new)** |
| Forget the rules | (rules in this skill ARE the audience's CODE) | **Reframe** |
| Always state a problem | (with judgment; tutorials are an exception) | Cap |
| Academic dissertation apparatus | Adapt, don't port | Adapt |
| Symbol / slogan | (already covered in how-to-speak.md §4) | Already covered |
| Knowledge-as-consensus philosophy | Operational consequence only (write for a community) | Partial |
| Sentence-level prose mechanics | Already covered by voice rules + anti-patterns | Already covered |
