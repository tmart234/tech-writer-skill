# Anti-Patterns

> Load this file when reviewing a draft. It is the reference for Step 3 (Scan for Anti-Patterns) in the `technical-blog-writer` skill. The voice is unflinching on purpose. If a rule reads as absolute, that is deliberate; exceptions are called out explicitly.

## How to use this file

Run three passes against any draft:

1. **Word-level pass.** Grep for Tier 1 banned words. If any appear, replace per the table. Grep for Tier 2 words; count them. A cluster (roughly 3+ in the same post) is slop even if each is defensible alone.
2. **Phrase and structure pass.** Look for banned phrases, banned structures, and hard-cap violations (em dashes, adverb density, etc.).
3. **Smell-test pass.** Ask the holistic questions in §5. If a paragraph passes §1–§4 and still smells synthetic, it probably is.

The enemy is not a word. The enemy is **generic, risk-free, evidence-free prose that could have been written by anyone about anything**. The vocabulary and structural tells in this file are the reliable proxies.

## Contents

- **§1 Tier 1 banned words: always replace** · 1a "delve" family · 1b "tapestry/landscape/realm" · 1c "testament/cornerstone" · 1d corporate verbs (leverage/utilize) · 1e empty adjectives (robust/seamless) · 1f "pivotal/crucial/vital" · 1g abstraction family (paradigm/framework) · 1h profundity markers (fundamentally/at its core) · 1i flattery/hype · 1j consensus-signaling (undoubtedly/clearly) · 1k 2024–2026 AI tells (underscore/showcase/meticulous)
- **§2 Tier 2 watchlist:** flag when 3+ cluster in one post
- **§3 Banned phrases** · 3a throat-clearing openers · 3b meta-commentary · 3c emphasis crutches · 3d closing boilerplate · 3e false profundity · 3f "not just X, but Y" · 3g reader-targeting · 3h "dive deeper" · 3i journey metaphors · 3j sycophantic openers · 3k "as of my last knowledge update"
- **§4 Banned structural patterns** · 4a rule of three · 4b uniform sentence length · 4c hedging seesaw · 4d "not only X, but also Y" · 4e false balance · 4f binary contrasts · 4g restatement loop · 4h summary paragraphs · 4i rehash transitions · 4j "in conclusion" · 4k bullet-list padding · 4l em-dash abuse · 4m "however/moreover" pile-ups · 4n academic intro · 4o passive-voice hedging · 4p prophecy closer · 4q constant juxtaposition · 4r negative-to-positive arc
- **§5 AI-slop smell tests:** 10 holistic checks
- **§6 Security-specific anti-patterns** · 6a FUD without quantification · 6b vulnerability without defense · 6c theoretical-vs.-PoC-vs.-wild-vs.-KEV confusion · 6d breathless trivial findings · 6e vendor-bashing without a design principle · 6f passive threat framing · 6g missing affected versions · 6h advisory-voice copy-paste · 6i "defense in depth" as substitute for ranking · 6j security theater · 6k medical-device lazy takes · 6l "DICOM is old" throat-clear
- **§7 Hard caps:** numerical limits with rationale
- **§8 Example fix-ups:** 10 worked before/after rewrites
- **§9 Mechanical verification**: the script, and the checks no script catches

---

## 1. Tier 1 banned words: always replace

These words are LLM tells with statistical backing. In the two largest studies to date, `delve` grew ~1,500% in PubMed abstracts between 2022 and 2024, `underscore` grew ~1,000%, `intricate` ~700%, and `meticulous` ~800%, with `delve` jumping from roughly 0.5 to 7.9 mentions per 1,000 papers in a single year ([Kobak et al., *Science Advances*, 2025](https://www.science.org/doi/10.1126/sciadv.adt3813); [Zhang et al., *Scientometrics*, 2026](https://link.springer.com/article/10.1007/s11192-026-05601-5); [Shapira, 2024](https://pshapira.net/2024/03/31/delving-into-delve/)). Juzek & Ward at FSU traced the overuse to RLHF feedback pipelines, not training data: humans rating model outputs preferred these words, so the models learned to produce them ([Juzek & Ward, arXiv:2412.11385](https://arxiv.org/html/2508.01930v1)).

Two-thirds of the excess 2024 "style" words were verbs; about a fifth were adjectives ([Kobak et al., 2025](https://www.science.org/doi/10.1126/sciadv.adt3813); [Futurism summary](https://futurism.com/the-byte/ai-overuses-specific-words)). That is the shape of the problem: it's not content words, it's posture words.

For each entry below: **word → why it's a tell → replacements → bad vs. fixed**.

### 1a. The "delve" family: false intellectual effort

| Banned | Why it's a tell | Replace with |
|---|---|---|
| **delve / delving / delve into** | Top LLM marker word. +654% in PubMed 2020→2023. Used to simulate thoroughness without doing any. | Cut entirely, or: "look at," "dig through," "read," "audit," "reverse," name the actual verb (decompile, diff, fuzz). |
| **unravel / unpack** | Pretends the topic is a mystery. It usually isn't. | "explain," "describe," or just do it. |
| **navigate / navigating** | Metaphor for nothing. "Navigating the complexities of X" = "X is hard and I won't say why." | "use," "work with," "deal with." Or be specific: "tune," "configure," "patch." |
| **explore / exploring** | Travel-brochure verb. Promises nothing concrete. | "test," "measure," "benchmark," "read the code," "break." |
| **dive / dive into / deep dive** | Corporate-webinar register. | "Here's how X works." |
| **shed light on / illuminate** | "I have no data, but I'd like you to think I do." | "show," "prove," or supply the data. |
| **embark on** | You are writing a blog post, not boarding a ship. | Delete the sentence and start at the verb. |

**Bad:** *In this post, we'll delve into the intricacies of DICOM's C-STORE handshake and unravel how attackers navigate the protocol stack.*
**Fixed:** *C-STORE's handshake has three bugs I can reproduce on a stock Orthanc install. Here they are.*

### 1b. The "rich tapestry" family: geography of nothing

These are metaphors for a location the author never visits. They exist to take up space where a noun should be.

| Banned | Why | Replace with |
|---|---|---|
| **tapestry / rich tapestry** | Pure LLM decoration. ([Kobak marker list](https://www.medrxiv.org/content/10.1101/2024.05.14.24307373v1.full.pdf)) | Delete. |
| **landscape** ("threat landscape," "evolving landscape") | Means "the set of things," which is never the interesting claim. | Name the things. "Three ransomware families targeted radiology in 2025" beats "the radiology threat landscape." |
| **realm** | Top-5 LLM marker word ([GPTZero](https://gptzero.me/ai-vocabulary); [Matsui 2024](https://www.medrxiv.org/content/10.1101/2024.05.14.24307373v2)). | "field," or just name the field: "AppSec," "PACS security." |
| **ecosystem** | Fine when literal (npm ecosystem). Slop when figurative ("the security ecosystem"). | Name the actors: vendors, regulators, researchers, customers. |
| **sphere / arena / space** | Same problem as landscape. "the MedTech space" = "MedTech." | Drop. |
| **world** ("in today's world," "the world of X") | Implies universality to cover for lack of specifics. | Drop the frame; start at the claim. |
| **domain** (non-technical sense) | OK as a technical term (Active Directory domain, problem domain). Slop as "the domain of cybersecurity." | If you mean "field," say "field"; or better, name it. |

**Bad:** *In the ever-evolving landscape of medical device cybersecurity, the DICOM realm presents unique challenges.*
**Fixed:** *Every PACS I've tested since 2019 accepts anonymous C-ECHO on port 104. That is the bug.*

### 1c. The "testament" family: load-bearing clichés

These nouns pretend a claim is self-evidently important. They are always replaceable by the actual reason.

| Banned | Why | Replace with |
|---|---|---|
| **testament** ("a testament to") | Religious register, zero content. | "proves," "shows," or supply the measurement. |
| **hallmark** | Usually decorative. | "typical of," "characteristic of"; or drop. |
| **cornerstone / bedrock / pillar / foundation** (metaphoric) | Building metaphors hide the absence of an argument. | Say which property you mean: "required for," "depends on," "assumed by." |
| **the backbone of** | Same. | "X handles Y's Z function." |

**Bad:** *TLS is the cornerstone of modern web security, a testament to decades of cryptographic research.*
**Fixed:** *TLS 1.3 removed RSA key exchange, CBC modes, and renegotiation: three of the four most common interception bugs from 1.2.*

### 1d. The corporate verb family: motion without work

| Banned | Why | Replace with |
|---|---|---|
| **leverage** | The single most-mocked corporate verb; LLM default for "use." | "use." Almost always. |
| **utilize / utilization** | Longer "use." No semantic gain. | "use." |
| **harness** | "Use," with fake energy. | "use." |
| **facilitate** | Hides the subject. *"X facilitates Y"* = *"X does Y"* or *"X lets you do Y."* | "lets," "helps," "does." |
| **enable** | OK when literal (feature flag enabled). Slop when abstract ("enables organizations to..."). | "lets you," or name the mechanism. |
| **empower** | Marketing cosplay. | Usually delete the sentence. |
| **unlock** ("unlock value," "unlock the power of") | HubSpot-core. | Delete. |
| **drive** ("drive results," "drive adoption") | Same. | Be concrete: "cut MTTD by 40%." |
| **streamline** | Means "do faster," but hides by how much. | "cuts X from 10s to 2s." |
| **optimize / optimized** (as adjective) | Compiler optimizes. Marketers "optimize." | Say what changed and by how much. |
| **curate / curated** | OK for art; slop for "we picked some." | "selected," "chose," or list them. |
| **showcase** | Top-10 LLM marker. | "show," or show it. |
| **foster** ("foster collaboration") | Pure LinkedIn. | Delete or name the mechanism. |

**Bad:** *We leveraged static analysis to empower developers to unlock secure coding patterns.*
**Fixed:** *We ran Semgrep with a custom ruleset. It caught 37 of the 41 known SQLi patterns in our corpus. Developers fixed 34 in one sprint.*

### 1e. The empty adjective family: adjectives that modify nothing

| Banned | Why | Replace with |
|---|---|---|
| **robust** | Means "I like it." No quantity, no failure mode named. | Specify: "survives 10,000 req/s," "handles malformed UTF-8." |
| **seamless / seamlessly** | Almost always false. Software has seams. | Delete, or name the integration point. |
| **cutting-edge / state-of-the-art / bleeding-edge** | Top-20 LLM marker ([GPTZero](https://gptzero.me/ai-vocabulary)). | Name the version, the paper, the year. "SOTA on CIFAR-10 in 2019" beats "cutting-edge." |
| **innovative** | Always applause, never description. | Describe what's new. |
| **holistic** | Means "I won't be specific." | Delete. |
| **comprehensive** | Usually means "long." | "covers X, Y, Z"; or drop. |
| **intricate** | Top-5 LLM marker (+700%). | "complicated," and explain *how*. |
| **nuanced** | "I don't want to take a position." | Take the position. (See the note after the table: this word is a symptom of a bigger failure.) |
| **rich** ("rich feature set," "rich data") | Marketing. | Count the features or describe the data. |
| **vibrant** | Travel brochure. | Delete. |
| **compelling** | Begging the reader to agree. | Make the case instead. |
| **powerful** | Hype. | Say what it does. |
| **impactful** | Management-school. | "reduced X by Y." |

**Bad:** *Our robust, comprehensive, cutting-edge platform delivers seamless integration across your nuanced threat landscape.*
**Fixed:** *It's a Python agent, 900 lines, that tails Suricata and posts to Slack. It missed two of twelve red-team beacons in the last exercise.*

**The "nuanced" tell points at a bigger failure than one word.** "Nuanced" is the vocabulary symptom; the disease is a draft laundered into generic-AI shape: every quirk sanded off, every hot take hedged into neutrality, every weird tangent cut for "flow." The author's job is the opposite: get the quirks, the hot takes, and the "I tried this and it was stupid" moments onto the page. A draft with zero personal opinions, zero asides, and zero dead ends can pass every word-level, phrase-level, and structural check in this file and still be slop, because it has been homogenized. It reads like the median of the training corpus, which is exactly the failure §5.7 and §5.5 are built to catch. So make "did the author show up?" a thing you check, not a vibe you hope for: point at the sentence only this author, with this specific hands-on experience, would have written. If there isn't one, the draft isn't done. It's been averaged.

### 1f. The "pivotal" family: importance inflation

| Banned | Why | Replace with |
|---|---|---|
| **pivotal** | Top-10 LLM marker; appears in ~15% of 2024 PMC papers ([Zhang et al., 2026](https://link.springer.com/article/10.1007/s11192-026-05601-5)). | "important"; or explain *why*. Usually just delete. |
| **paramount** | Pure LLM. | Delete. If something is critical, prove it. |
| **crucial / crucially** | Overused flag word. If everything is crucial, nothing is. | Delete; if the point survives without it, the word was padding. |
| **vital** | Same. | Delete or specify: "required for FDA 510(k) clearance." |
| **essential** | Same. | Same. |
| **critical** | OK in security when literal (CVE severity Critical, critical path). Slop when rhetorical ("it's critical to understand..."). | Reserve for CVSS 9.0+ or literal criticality. |
| **indispensable** | Never true. | Delete. |
| **key** (as adjective, "the key insight") | LLM filler. | Delete or rank explicitly: "the first," "the biggest." |
| **significant / significantly** | Top LLM marker. Fine in statistics ("p<0.05"). Slop as filler. | Give the number. |
| **notable / notably** | Hedged emphasis. | Delete or supply the fact. |

**Bad:** *It is absolutely critical to understand the pivotal role of input validation in this essential security paradigm.*
**Fixed:** *The parser trusts the Content-Length header. Send a larger body and it overflows. Here's the PoC.*

### 1g. The abstraction family: "paradigm" when you mean "way"

These are legitimate technical words being used as generic filler. Flag whenever they could be replaced by a simpler noun without loss.

| Word | OK when... | Slop when... |
|---|---|---|
| **paradigm** | Paradigm shift in Kuhn's sense; programming paradigm (OOP vs. functional). | "a new paradigm for customer engagement." |
| **framework** | Named framework (Django, MITRE ATT&CK). | "a framework for thinking about..." (usually means "some thoughts"). |
| **methodology** | Actual named methodology (STRIDE, PASTA). | "our methodology was to..." when you mean "we did." |
| **approach** | "Two approaches: BFS and DFS." | "a holistic approach to..." |
| **solution** | A specific product or fix. | "our solution enables..." (corporate). |
| **mechanism** | Concrete mechanism (CSRF token, TLS handshake). | "a mechanism for..." when you mean "a way to." |
| **strategy** | Named strategy. | Generic "strategic." |
| **ideation, synergy, alignment, actionable, stakeholder** (outside its narrow technical sense) | Almost never. | Almost always. |

Rule: **if the sentence still makes sense with "way" swapped in, use "way." Or restructure.**

### 1h. The profundity family: false depth markers

| Banned | Why | Replace with |
|---|---|---|
| **fundamentally** | Claim of depth without depth. | Delete. If the claim is fundamental, the reader can tell. |
| **essentially** | Usually means "approximately, if you squint." | Delete; be precise. |
| **at its core** | LLM cliché. | Delete. |
| **underlying** | Often filler ("the underlying mechanism" = "the mechanism"). | Delete unless contrasting with "surface." |
| **inherent / inherently** | "I won't defend this claim." | Delete or defend. |
| **intrinsic / intrinsically** | Same. | Same. |
| **in essence** | See "essentially." | Delete. |
| **ultimately** | Often throat-clearing. | Delete. |

### 1i. The flattery / hype family: the reader isn't stupid

| Banned | Why | Replace with |
|---|---|---|
| **remarkable / remarkably** | Telling instead of showing. | Show the thing. |
| **incredible** | Literally means "not credible." | Delete. |
| **fascinating** | "I want you to be interested." Readers decide that themselves. | Delete. |
| **game-changing / game changer** | TED Talk. | Name the change. |
| **revolutionary** | Almost never true. | Delete. |
| **transformative** | Consulting-deck word. | Delete. |
| **groundbreaking** | Press release. | Delete. |
| **unprecedented** | OK for statistical claims with citation. Slop otherwise. | Cite the precedent you're breaking. |
| **world-class** | Marketing. | Delete. |
| **next-generation / next-gen** | Vendor-speak. | Name the generation. |
| **exciting** | See "fascinating." | Delete. |
| **powerful** | See §1e. | Delete. |

### 1j. The consensus-signaling family: begging

Undoubtedly a tell. (Pun intended.) These words pressure the reader into agreement instead of earning it.

| Banned | Why | Replace with |
|---|---|---|
| **undoubtedly** | If it's undoubted, you don't need the word. | Delete. |
| **clearly** | If it's clear, delete the word. If it isn't, the word is a lie. | Delete. |
| **obviously / evidently** | Same, plus condescending. | Delete. |
| **without a doubt / no doubt** | Same. | Delete. |
| **it's no secret (that)** | It usually is, or it's not worth saying. | Delete and make the claim. |
| **needless to say** | If it's needless, don't say it. | Delete. |
| **of course** | Often condescending padding. | Delete. |
| **surely / certainly** | Begging. | Delete. |

### 1k. AI-specific tells documented 2024–2026

Marker words with statistically significant excess usage post-ChatGPT, from [Kobak et al. 2025](https://www.science.org/doi/10.1126/sciadv.adt3813), [Matsui 2024/2025](https://pmc.ncbi.nlm.nih.gov/articles/PMC12679996/), [Zhang et al. 2026](https://link.springer.com/article/10.1007/s11192-026-05601-5), and [GPTZero's top-50 list](https://gptzero.me/ai-vocabulary). Treat as Tier 1 unless flagged otherwise:

- **underscore / underscores / underscored**: +1,000%; appeared in ~20% of 2024 PMC papers. Replace with "shows," "proves," or just assert the thing underscored.
- **showcase / showcasing / showcased**: +500%+. Replace with "show" or demonstrate it.
- **commendable**: +245%. Almost always delete; this word has no place in engineering writing.
- **meticulous / meticulously**: +800%. If the work was careful, show the care; don't announce it.
- **boast / boasts**: Product-brochure verb. Replace with "has."
- **align / aligns / aligned with** (as rhetorical filler): OK in literal alignment (register alignment, goal alignment). Slop as "aligns with best practices."
- **foster / fostering**: §1d.
- **captivate / captivating**: Delete.
- **prowess**: Delete. Nobody writes "prowess" unprompted.
- **symphony** (as metaphor): Delete.
- **testament**: §1c.
- **bustling**: Delete.
- **treasure trove**: Delete.
- **pave the way**: "enables," or name the mechanism.
- **stand as a testament**: See above; this is the tell of tells.
- **in the realm of**: §1b.
- **ever-evolving / ever-changing**: §3 throat-clearers.
- **today's digital age / today's fast-paced world**: §3 throat-clearers.
- **a myriad of / myriad**: "many" or give a count.
- **plethora**: Same.
- **navigate the complexities**: §3.
- **the intersection of X and Y**: often filler. OK if you actually discuss both; slop otherwise.
- **potential / potentially**: Top style marker per Kobak. Use only when making a probability claim; cut when it's throat-clearing ("potential benefits include...").
- **primarily**: Top marker per Matsui 2025. Often deletable.
- **various / varied**: Vague by design. Enumerate or cut.
- **significantly**: §1f.
- **additionally / moreover / furthermore**: See §4; pile-ups are the tell.
- **overall**: Almost always deletable.
- **ultimately**: §1h.

---

## 2. Tier 2 watchlist: flag when clustered

These are fine in isolation. They belong to ordinary English. But LLMs reach for them more than humans do, and **three or more in one 800-word post is slop, regardless of individual defensibility**.

Count these against a cap of **≤ 2 per 1,000 words per word**, and **≤ 6 total Tier-2 words per 1,000 words**:

- insight / insightful
- journey (figurative)
- ensure / ensuring
- context (as filler: "in this context...")
- given (as conjunction: "given that...")
- effective / effectively
- efficient / efficiently
- robust (also Tier 1; this one straddles)
- meaningful / meaningfully
- valuable / value-add
- diverse / diversity (outside literal demographic usage)
- broader
- embrace (figurative)
- reimagine
- reshape
- transform (verb)
- empower (also Tier 1)
- engage / engagement (outside literal product metrics)
- proactive
- holistic (also Tier 1)
- synergy
- dynamic (as vague adjective)
- vibrant
- strive / strive to

**Decision rule:** on re-read, if you see three or more of these in a post, assume an LLM wrote at least one paragraph. Rewrite it.

---

## 3. Banned phrases: always remove

### 3a. Throat-clearing openers

The reader arrived. They don't need a runway.

| Banned | Fix |
|---|---|
| "In today's fast-paced world..." | Delete. Start at the claim. |
| "In the ever-evolving landscape of..." | Delete. |
| "In an age where..." | Delete. |
| "As we navigate the complexities of..." | Delete. |
| "With the rise of..." | Delete, or cite a number: "ransomware hit 66% of orgs in 2024 (Sophos)." |
| "In recent years..." | Cite the year or delete. |
| "More than ever..." | Delete. |
| "It has become increasingly clear that..." | Delete. |
| "Cybersecurity is more important than ever." | Career-ending opener. Delete. |

GPTZero's top AI-phrase list is led by exactly this kind of throat-clearing: *"today's digital age," "despite facing," "expressed excitement"* ([EdScoop 2024](https://edscoop.com/gptzero-common-ai-words-detection-education-2024/)).

### 3b. Meta-commentary: stop narrating the essay

| Banned | Fix |
|---|---|
| "It's important to note that..." | Delete. If it weren't important, why include it? |
| "It's worth mentioning..." | Delete. Same. |
| "As we'll see..." | Delete; let us see it. |
| "This article will discuss..." | Delete. Discussing it *is* the article. |
| "In this post, we'll explore..." | Delete. Show, don't announce. |
| "Let's take a look at..." | Delete. |
| "Before we continue..." | Delete. |
| "Now that we've covered X, let's move on to Y." | Delete. Headings handle this. |
| "The following sections will..." | Delete. |
| "As mentioned earlier..." | If the reader forgot, the writing failed. Restate the idea; don't point at it. |

### 3c. Emphasis crutches

"Needless to say": then don't say it. "Without a doubt": earn the doubt's absence. "It goes without saying": then let it.

All of these go in the bin. If the claim needs propping up with an adverb, it needs propping up with evidence.

### 3d. Closing boilerplate

| Banned | Fix |
|---|---|
| "In conclusion..." | Delete. End at the conclusion; don't announce it. |
| "To sum up..." | Delete. |
| "As we've explored..." | Delete. |
| "At the end of the day..." | Delete. |
| "All things considered..." | Delete. |
| "Ultimately..." | Delete. |
| "In summary..." | Delete. |
| "By following these best practices, you'll be well-equipped to..." | Delete the paragraph. Corporate tutorial-slop. |
| "Stay safe out there." | Delete unless it's genuinely your voice (it usually isn't). |

Paul Graham's entire *Write Simply* essay is worth internalizing here: "if you say nothing simply, it will be obvious to everyone, including you" ([Graham, *Write Simply*](https://www.paulgraham.com/simply.html)). Conclusions that merely restate reveal that there wasn't much being said.

### 3e. False-profundity phrases

"At its core," "fundamentally speaking," "in essence," "when all is said and done," "the fact of the matter is," "the truth is": these add nothing and signal RLHF training. Delete and make the claim directly.

### 3f. The "not just X, but Y" tic

The single most reliable LLM sentence pattern. Technically called a **contrastive reframe** ([Stockton, *AI Writers Room*](https://www.blakestockton.com/dont-write-like-ai-1-101-negation/); [Gorrie, *Dead Language Society*](https://www.deadlanguagesociety.com/p/rhetorical-analysis-ai)). Examples to delete on sight:

- "It's not just about X, it's about Y."
- "We're not just building a product — we're building an experience."
- "X isn't just evolving; it's accelerating."

**Rule:** grep every draft for `not just`. If you find it, assume slop and rewrite. Legitimate contrastive negation exists ("this is not a buffer overflow; it's a use-after-free"): that's fine because it distinguishes two *specific* things. The slop version distinguishes a thing from a vaguer version of itself.

### 3g. "Whether you're X or Y" reader-targeting

"Whether you're a seasoned pen-tester or a curious sysadmin, this post has something for you." Delete. This is SEO-listicle slop. Write for one specific reader. If the post helps others too, great; don't pander about it.

### 3h. "Dive deeper" call-to-action slop

"Dive deeper," "explore further," "delve into," "take a deep dive," "learn more about," "unpack further." All deletable. If you want the reader to read more, link to the source. If you want them to try something, give the command.

### 3i. The "journey" metaphor set

"Embark on a journey," "your security journey," "the DevSecOps journey," "along the way," "adventure." Delete. Software is not a pilgrimage.

### 3j. Sycophantic openers (chat/comment-mode leak)

"Great question!" "That's a fascinating topic!" "What a great point!" "Certainly, here's..." "I'd be happy to..." These are conversational-LLM artifacts that have leaked into blog drafts. Any of them = immediate rewrite. The Elsevier journal *Surfaces and Interfaces* published a paper that opened with *"certainly, here is a possible introduction for your topic"* ([Scientific American, 2024](https://www.scientificamerican.com/article/chatbots-have-thoroughly-infiltrated-scientific-publishing/)). Don't be that author.

### 3k. "As of my last knowledge update"

Self-explanatory. Immediate full-draft audit if this appears.

---

## 4. Banned structural patterns

Word-level fixes aren't enough. LLMs have architectural tells.

### 4a. The rule of three (compulsive tricolon)

LLMs can't stop themselves from listing in threes. Parallel nouns, parallel verbs, parallel clauses: always three. "Authority, clarity, and inoffensiveness." "Fast, scalable, and reliable." "Errors, quirks, and mistakes." Colin Gorrie identified this as one of the defining rhetorical tics of LLM prose ([*Dead Language Society*](https://www.deadlanguagesociety.com/p/rhetorical-analysis-ai)).

Churchill's tricolons ("blood, toil, tears and sweat," which is actually four) worked because he deployed them rarely and for rhythm. LLMs deploy them every third sentence.

**Rule:** scan for tricolons. Keep at most one per 500 words. Break the rest into pairs, or single terms, or actual enumerated lists. If you have three real things, consider four or two.

### 4b. Uniform sentence length: the metronome

LLM prose drifts toward a median sentence length of 18–22 words with low variance. Human prose jumps: 4-word sentences. Then 30-word sentences that double back on themselves. Then a single clause.

GPTZero's "burstiness" metric is explicitly this ([GPTZero FAQ](https://gptzero.me/)). Target: **sentence-length standard deviation ≥ 8 words** within any paragraph of 4+ sentences. If every sentence in a paragraph is 15–22 words long, rewrite with some short punches and at least one long sentence.

**The short-side tic.** The metronome runs both ways. A run of clipped sub-five-word fragments (*"This is a choice. It was always a choice. They knew."*) is its own uniform-length tell, and staccato overused stops delivering contempt and starts reading as a verbal tic. Cap: no more than three sub-five-word sentences back to back. (See `writing-rules.md` → "Voice and mechanics" → staccato.)

### 4c. The hedging seesaw

Every claim balanced by its opposite: "While X is true, it's also worth noting that Y. However, Z..." LLMs do this to minimize RLHF-penalty risk. It reads as cowardice.

**Rule:** every paragraph should have at most one "however" or "on the other hand." If you find yourself hedging every claim, pick a side. You are a principal engineer, not a Wikipedia talk page.

### 4d. "Not only X, but also Y"

Parallel scaffolding with no semantic load. Usually replaceable with "X and Y." Keep at most one per post.

### 4e. False balance / manufactured counterpoint paragraphs

The "on the other hand" paragraph that exists only because the model was trained to sound balanced. Ask: *does this counterpoint reflect an actual disagreement I have, or am I performing fairness?* If the latter, cut.

This does not mean cut all counterpoints. If you genuinely weighed an alternative and rejected it, show the weighing and the reason. Matt Levine does this by naming specific counter-arguments with their best proponents, then dismantling them. That's argument, not balance-theater.

### 4f. Binary contrasts / "It's not X, it's Y" reveals

See §3f. At the paragraph level this becomes: *"Many people think X. But actually, Y."* Sometimes legitimate. Often slop. The test: is X a straw position or something a real practitioner holds? If straw, cut.

### 4g. The restatement loop

Topic sentence → body → restatement of topic sentence. LLMs close paragraphs by echoing the opener. Sometimes called the "burger structure." Cut the closing echo. A paragraph should end where the argument ends, not where the outline says to return home.

### 4h. Summary paragraphs telling you what the section just said

"As we've seen, X is important because Y and Z." Delete. If the reader has to be told what they just read, the section failed. Trust the reader.

### 4i. Transition sentences that rehash the previous section

"Having explored the vulnerability, let's now turn to the mitigation." Delete. The next heading is the transition.

### 4j. The conclusion that opens with "In conclusion"

See §3d. Any conclusion paragraph that begins by announcing itself is slop. End on the sharpest sentence you've got.

### 4k. Bullet-list padding

Bullets exist for: enumerations where order doesn't matter, parallel short items, and checklists. They do not exist for:

- padding a 2-paragraph argument into a visually-busy page
- three-bullet items where each bullet is a full paragraph (that's prose; write prose)
- restatement of the preceding paragraph in list form

Rule: if you can replace the bulleted section with two sentences and lose nothing, do it.

### 4k(ii). Corporate closings / "well-equipped" slop

"By following these best practices, you'll be well-equipped to defend your organization against the evolving threat landscape." This is five anti-patterns in one sentence. Every technical blog needs at most one such post in its lifetime, and that one is a mistake.

### 4l. Em-dash abuse

The most-debated tell. The data:

- GPT-3.5 barely used em dashes; GPT-4o used ~10× more than its predecessor; GPT-4.1 more still ([Goedecke, 2025](https://www.seangoedecke.com/em-dashes/)).
- One stylometric test treats em-dash density above **0.5% of tokens** as a strong AI signal ([Undercode Testing, 2024](https://undercodetesting.com/the-em-dash-enigma-how-a-single-punctuation-mark-blows-ai-writer-cover/)).
- Historical English peaked at ~0.35% em-dashes circa 1860 and now sits at ~0.25–0.275% ([Goedecke, 2025](https://www.seangoedecke.com/em-dashes/)).
- The em-dash is not a definitive tell in isolation; it correlates with other markers ([*Night Water*](https://www.nightwater.email/em-dash-ai/); [MIT Tech Review via *Night Water*](https://www.nightwater.email/em-dash-ai/)).

**Recommendation for this skill:** cap at **3 em dashes per 1,000 words** (roughly 0.03–0.04% of tokens, well below both the AI floor and historical human peak). The current skill's cap of 1 per 1,000 is defensible as a stricter rule, but too punishing given that real human writers legitimately use them. **3 per 1,000 is the right number.** Prefer period, colon, parenthesis, or restructure. Never use an em-dash in "not X — it's Y" constructions (§3f).

### 4m. Sentence-starting "Moreover," "Furthermore," "Additionally" pile-ups

These transitions are fine once per post. Two in a row is a tell. Three anywhere in a post means rewrite. Human writers use "also," "and," "plus," or just start the next sentence.

### 4n. The "hook → background → thesis" academic intro

The LLM default intro is: attention-grabbing generality → 2–3 paragraphs of background → thesis statement. By paragraph 3 the reader has left.

**Replacement pattern:** start at the thesis or the scene. Paul Graham: *"The goal of an essay is to surprise the reader"* ([*Writing Routines* interview](https://www.writingroutines.com/paul-graham-interview/)). Dan Luu, rachelbythebay, and tptacek all open cold: claim in sentence one, evidence in sentence two.

### 4o. Passive-voice hedging

"Mistakes were made." "Sensitive data was exposed." "It was determined that..." Name the actor when you can. Passive is fine when the actor is unknown or irrelevant ("RSA was published in 1977"), but LLMs use passive to avoid naming vendors, teams, or their own opinions. That's cowardice.

Security-specific case: if a vendor screwed up, **name the vendor**. "Siemens syngo.plaza accepted unauthenticated DICOM queries" is journalism. "Unauthenticated queries were accepted by a leading medical imaging platform" is cover-your-ass slop.

### 4p. The prophecy closer

The closer that dodges every banned word in §3d and §4j and still reads like a LinkedIn post. The shape: *"The [entities] who will [thrive / succeed / win] in this [era] are the ones who [action]."*

- "The teams that will survive the next wave of ransomware are the ones who treat backups as a security control, not an IT chore."
- "The hospitals that thrive in the post-quantum era will be the ones that started their crypto inventory today."
- "The engineers who win in the age of AI are the ones who learn to ask better questions."

No Tier-1 word, no "in conclusion," no "stay vigilant": the word-level and phrase-level passes wave it through. The tell is structural: a future-tense sorting of an unnamed group into winners and losers, conditioned on a vague virtue, with no named loser, no named winner, no number, no date. It is the §3d closing exhortation wearing a prophecy costume, and it counts against the zero-closing-exhortation cap in §7.

**Rule:** ban the structure, not just the vocabulary. Grep every closer for the shapes *"who will [verb],"* *"the ones who,"* and *"will [thrive / succeed / win / survive] in [the era / this age / the world of]."* If the final paragraph sorts an unnamed group into a future outcome based on an abstract behavior, cut it. End on the last substantive claim, or use one of the three earned closers (prescription-or-refusal, catchphrase reuse, specific call-to-action) from the "Closers" section of `writing-rules.md`. The prophecy closer is none of the three: it prescribes nothing specific, reuses no coined name, and asks for no concrete action. It just flatters the reader that they might be one of the winners.

### 4q. Constant juxtaposition (the antithesis reflex)

Contrast is a real tool, and this entry is not a ban on it. The slop is contrast used as the *default rhythm of thought*: every key sentence built as two halves set against each other, every paragraph pivoting on a "but."

The sentence-level shape is antithesis. "It's not about the tool, it's about the mindset." "Less a protocol, more a liability." "X isn't evolving; it's accelerating." Variants the other entries miss: chiasmus ("we shape our tools and our tools shape us"), the "less X, more Y" reframe, and the em-dash pivot ("the fix is simple, but simple isn't easy").

Why it's a tell: the antithesis carries the *cadence* of an insight. Setup, pivot, landing. The reader feels a point arrive even when the contrast only separates a thing from a vaguer or strawer version of itself. The structure manufactures the sensation of depth; no information moved.

§3f (`not just X, but Y`), §4d (`not only X`), §4f (binary "many think X, but actually Y"), and §4c (the hedging seesaw) are specific instances of this reflex. This entry is the umbrella: the *rhythm*, not the phrase. A draft can pass all four of those checks and still pivot on opposition in every paragraph.

**When it earns its place.** A juxtaposition is legitimate when it separates two *specific, named* things the reader could genuinely confuse, on a stated axis. That is the skill's "fence off your idea" move: claim C, not C-prime, and here is the axis. A real juxtaposition carries information; it tells the reader which of two concrete things is meant. Keep those. The slop version separates a thing from a strawman or from a blurrier copy of itself, which tells the reader nothing.

**The test.** For each contrast, ask whether it separates two specific things or a thing from a vaguer version of itself. Cut the second kind, or replace it with the plain assertion. Then count: if most key sentences in a section turn on opposition, the rhythm itself is the tell even when each contrast is individually defensible. Break the run. Most claims are assertions, not contrasts. Say the thing.

**Cap:** at most one antithesis-driven sentence per 200 words, and never two consecutive paragraphs whose main point is a contrast.

### 4r. The negative-to-positive arc (mandatory uplift)

The §4q reflex stretched from the sentence to the whole document. The shape: open on the problem, the risk, the bad news; close on reassurance, a path forward, "but it's fixable." Concession, then uplift.

This is not a ban on ending positive. If the evidence genuinely supports optimism, if there is a real fix and you have shown it works, end there. The slop is *structural* uplift: the redemptive turn that arrives regardless of what the evidence says.

Why AI does it: RLHF rewards endings that feel resolved and non-threatening. A draft that ends grim scores lower than one that ends on hope, so the model learned never to leave the reader in discomfort. The ending is then decided by *training*, not by *evidence*. When the body does not support the optimism, the uplift is dishonesty with a bow on it.

It shows up at two scales. Whole-post: a grim intro and a hopeful closer whose mood the body never earned. Section-level: every section that names a danger neutralizes it before the next heading, so no section is ever allowed to end on the danger. §4p (the prophecy closer) and §3d (closing boilerplate) are the closer-shaped instances; this entry is the broader arc, the pull across the whole piece toward ending brighter than it started.

**The test.** Would the ending change if the evidence were worse? If the uplift would survive a bad result unchanged, it is structural, not earned. Cut it, and let the ending follow the evidence: if the situation is bad, end on the bad. Schneier's prescription-or-refusal closer ends *resolved* but not *comforting*; "smarter regulation versus stupider regulation" is a choice, not a reassurance. That is the model. A section is also allowed to end on the danger. The obligation to describe defenses (§6b) is satisfied across the post, not by stapling a reassurance onto every paragraph.

**Cap:** at most one earned uplift turn per post, and only when the body's evidence produces it.

---

## 5. AI-slop smell tests: holistic

Pass these even if §1–§4 are clean. These are Turing-test-for-slop questions.

1. **Is every paragraph the same length?** LLM default is 4–6 sentences per paragraph, every paragraph. Real writers have 1-sentence paragraphs for emphasis. And 12-sentence paragraphs when the argument needs it.
2. **Is every sentence declarative?** No questions, no commands, no fragments. A technical post with zero questions and zero fragments over 1,500 words is suspect.
3. **Are there no specific numbers, names, dates, or CVEs?** Real security writing is dense with CVE IDs, version numbers, port numbers, byte offsets, dates, vendor names. If the post could be about any vendor and any CVE, it is slop.
4. **No code, no diagrams, no measurements?** In application-security or DICOM writing, the absence of at least one code block, `tcpdump` output, screenshot, or measurement is a bad sign.
5. **No dead ends, no "I was wrong about X"?** Real work includes failure. LLMs never admit they were wrong because they have no stakes. If the post never says "I tried Y first and it didn't work" or "I was wrong to assume Z," it is probably synthetic.
6. **No concrete scene?** "At 3am on a Tuesday the PACS started alerting on C-STORE timeouts" beats "incidents can occur at unexpected times." Name the time, the tool, the port, the building.
7. **No unfashionable opinions?** LLM default is the median of the training corpus. If your post agrees with every vendor, every framework, every CISA advisory, and every OWASP cheat sheet, you haven't said anything. Name one thing the consensus gets wrong.
8. **Perfectly even-handed? No vendor named, no tool ranked, no preference stated?** Same problem.
9. **The practitioner test:** would someone who actually does this job bother writing this? If the post is 1,200 words saying "DICOM is a protocol used in medical imaging and has security implications," no practitioner would bother. Slop.
10. **The grep test:** grep the post for one of your author's actual recurring obsessions (e.g. TLS in DICOM, 510(k) vs. PMA, CVSS mis-scoring, CWE overlap). If none of your pet topics appear, the post isn't from you.

---

## 6. Security-specific anti-patterns

Security writing has its own failure modes on top of everything above.

### 6a. FUD without quantification

"Devastating," "catastrophic," "crippling," "massive." If a breach is catastrophic, say whose catastrophe and in what units: dollars, records, downtime hours, patient-safety events. The Fortinet/CTA responsible-disclosure guidance explicitly flags the industry's FUD problem: high CVE counts do not equal poor vendor practice, and weaponizing vuln counts is marketing, not engineering ([Fortinet/CTA, 2024](https://www.fortinet.com/blog/psirt-blogs/advancing-responsible-disclosure-efforts-a-qa-with-michael-daniel-of-cta)).

**Rule:** no severity adjective without a number within 20 words of it.

### 6b. Vulnerability without defense

If you describe how to exploit X, describe (at minimum) what to do about X. Not because of responsible-disclosure theater: a vuln writeup without mitigation is half the work. Project Zero posts do this well: every teardown ends with "fixed in version N; here's the patch."

### 6c. Conflating theoretical CVE with actively exploited

"Attackers can now..." when the CVE is a 6.1 medium with no known exploitation in the wild is dishonest. If CISA KEV doesn't list it, don't write as if it did. Use precise language:

- *Theoretical*: "a malformed PDU can crash the parser."
- *PoC exists*: "I have a working PoC; here it is."
- *In the wild*: "GreyNoise shows 1,400 scanners hitting this since [date]."
- *KEV*: "CISA added this to KEV on [date]; federal agencies have 21 days."

Collapsing these four states into one is the single most common security-blog dishonesty.

### 6d. Breathless reporting of trivial findings

Reflected XSS on a marketing page is not a story. Missing `X-Content-Type-Options` is not a story. If the finding wouldn't change a pen-test report's executive summary, it probably doesn't warrant a post.

### 6e. Vendor-bashing without naming the design principle violated

"Vendor X is bad" is not a post. "Vendor X ships PACS with hardcoded DICOM AE titles and a default TLS cert shared across installations, violating [NIST SP 800-57 §5.1] on per-deployment key material" is a post. Name the principle. Cite the document. This is the Krebs / Schneier / tptacek mode: attack design choices, not brands.

### 6f. "Hackers can now..." passive threat framing

Name the actor class or don't. "Unauthenticated network-adjacent attackers can..." is precise. "Hackers can now..." is tabloid.

Better: use the MITRE ATT&CK actor vocabulary or the CVSS attack-vector taxonomy. "AV:N/AC:L/PR:N/UI:N" is six tokens that replace a bad paragraph.

### 6g. Missing affected versions on remediation advice

"Upgrade to the latest version" is useless. "Fixed in 3.14.2; 3.14.1 and earlier are vulnerable; 2.x is EOL and will not be patched" is an advisory. If the post recommends upgrading without naming versions, it's slop.

### 6h. Copy-pasting vendor advisory language as analysis

If a paragraph reads like the vendor's KB article, it *is* the vendor's KB article. Analysis means: what did the vendor get wrong? Why did this ship? What class of bug is this? How would you have caught it in review? Without those four questions, you are a press release.

### 6i. "Defense in depth" as a substitute for thinking

"Defense in depth" is a real concept and a fine phrase. It becomes slop when used to avoid ranking controls. If you recommend five controls, rank them. Most-bang-for-buck first. Network segmentation and MFA are not equivalent; don't list them side-by-side as if they were.

### 6j. Security theater in the author's own voice

Recommending 60-day password rotation in 2026. Recommending AV signature vendors by name without data. Treating compliance checkboxes as security. If the post reads like an auditor wrote it, the author has been captured.

### 6k. Medical-device-specific: the "hospitals are behind" lazy take

Every medical-device post does not need the "hospitals run Windows XP" paragraph. If you're making that observation, tie it to the specific economic and regulatory reason (FDA re-certification cost, 10-year device lifecycle, MDS2 gaps) and name a number. Otherwise cut it.

### 6l. DICOM-specific: the "DICOM is old" throat-clear

DICOM is from 1993. Every reader knows. Start at the bug.

---

## 7. Hard caps (numbers)

Defensible, evidence-based, not arbitrary. These are tuned for the author's voice (principal engineer, unflinching, technical). They would be too loose for a newsletter and too tight for a textbook.

| Metric | Cap | Rationale |
|---|---|---|
| **Em dashes per 1,000 words** | ≤ 3 | 1 is too strict; real writers use them. 10+ is the GPT-4o signature. 3 is below the historical English peak of ~0.35% and well below the AI floor ([Goedecke](https://www.seangoedecke.com/em-dashes/); [Undercode](https://undercodetesting.com/the-em-dash-enigma-how-a-single-punctuation-mark-blows-ai-writer-cover/)). |
| **Parenthetical asides per 1,000 words** | ≤ 4 | More than 4 fragments the reading. Prefer footnotes or restructure. |
| **Adverbs ending in -ly per 500 words** | ≤ 6 | Zinsser's rule of thumb: most -ly adverbs weaken the verb. Strunk & White: "the adverb is not your friend." 6 per 500 = ~1.2% of text; human baseline is ~1.5–2%. Below-baseline is the target; the cap catches obvious overuse. |
| **Tier-1 banned words** | **0** per post | Zero tolerance. Replace every instance. |
| **Tier-2 watchlist words** | ≤ 2 of any one word per 1,000 words; ≤ 6 total per 1,000 | Clusters are the tell, not individuals. |
| **Tricolons** | ≤ 1 per 500 words | See §4a. |
| **"However" / "Moreover" / "Furthermore" / "Additionally"** | ≤ 1 per 500 words, combined | See §4m. |
| **Sentence-length standard deviation (within any paragraph of 4+ sentences)** | ≥ 8 words | LLM burstiness signature; humans vary more ([GPTZero](https://gptzero.me/)). |
| **Bold (as % of body text)** | ≤ 2% | More than 2% = listicle. Bold for terms-of-art on first use and occasional key phrases. |
| **Italic (as % of body text)** | ≤ 3% | Italics for code/terms/emphasis. Over 3% means italics stop meaning anything. |
| **Consecutive sentences starting with the same word** | ≤ 2 | Three "The ..." sentences in a row = rewrite. |
| **Paragraphs ≥ 6 sentences long in a row** | ≤ 2 | Break up the wall. |
| **"Not just X" / "not only X"** | ≤ 1 per post, and only if the contrast is concrete | See §3f. |
| **Antithesis / contrastive-reframe sentences** | ≤ 1 per 200 words | Contrast as the default rhythm is the §4q tell, even when each contrast is individually fine. |
| **Consecutive paragraphs built on a central antithesis** | ≤ 1 | Two in a row makes the antithesis the structure, not a tool. See §4q. |
| **Earned uplift turns per post** | ≤ 1, and only when evidence-backed | Structural optimism that would survive a worse result unchanged is unearned. See §4r. |
| **Bullet-list items that are full sentences of 20+ words** | ≤ 3 per list | Longer means it should be prose. |
| **Headings as questions** | ≤ 1 per post | LLMs overuse interrogative headings ("What is X?"). OK once; annoying thrice. |
| **Closing exhortation paragraphs ("stay safe," "stay vigilant," "stay informed")** | 0 | Never. |

---

## 8. Example fix-ups

### Fix-up 1: Throat-clearing intro

**Before:**
> In today's ever-evolving cybersecurity landscape, the realm of medical device security presents unique and intricate challenges. As we navigate the complexities of an increasingly connected healthcare ecosystem, it is crucial to understand the pivotal role that the DICOM protocol plays. This article will delve into the nuances of securing DICOM in modern clinical environments.

**After:**
> DICOM C-STORE has a default port (104), a default authentication posture (none), and a default trust model (any AE title goes). Every hospital I've tested since 2019 has at least one scanner exposing it. Here's how to find yours.

**What changed:** cut 49 words of throat-clearing; opened with three specific defaults and a testable claim; ended the paragraph on a call to the reader's own environment, not a vendor brochure.

---

### Fix-up 2: Vendor-neutral FUD

**Before:**
> Hackers can now leverage sophisticated techniques to exploit critical vulnerabilities in a leading medical imaging platform, potentially leading to devastating consequences for patient safety.

**After:**
> Siemens syngo.via VB60 (advisory SSA-123456, CVSS 9.8) accepts unauthenticated DICOM queries on port 104. In a lab reproduction, I pulled 1,200 study headers from a stock install in 90 seconds. Patch VB60A-HF04 (December 2025) closes it; VB50 and earlier are EOL.

**What changed:** named the vendor, version, advisory ID, CVSS score, port, reproduction result, patch level, and EOL status. Removed "hackers," "leverage," "sophisticated," "critical" (rhetorical), "potentially," "devastating." Passive voice gone.

---

### Fix-up 3: Empty-adjective cluster

**Before:**
> Our robust, state-of-the-art platform provides comprehensive, seamless, cutting-edge protection against the ever-evolving threat landscape, empowering organizations to proactively secure their critical assets.

**After:**
> It's a Suricata sensor + custom ruleset. It caught 11 of 14 red-team beacons in the Q3 exercise and missed three (TLS-pinned C2 over 443, all Cobalt Strike). The 900-line ruleset is on GitHub.

**What changed:** removed seven Tier-1 adjectives. Added one measurement, one known-failure mode, one artifact link. "Missed three" is the evidence of honesty.

---

### Fix-up 4: The restatement loop

**Before:**
> Input validation is fundamentally one of the most important aspects of secure coding. By properly validating all inputs, developers can prevent a wide range of vulnerabilities including SQL injection and cross-site scripting. Therefore, input validation is critically important and should be a cornerstone of any secure development practice. It is essential to make input validation a core part of your coding process.

**After:**
> Two of the three SQL-injection bugs I found in [app] last quarter were in code that had a validator, just the wrong one. `validateAlphanumeric()` happily passed `1 OR 1=1`. The problem isn't "validate your inputs." The problem is that "validation" is four different jobs (allowlist, length, type, escape) and most codebases do one and call it done.

**What changed:** replaced a restatement loop (sentences 1 and 3 are the same claim) with a specific finding and a taxonomy of what "input validation" actually means.

---

### Fix-up 5: Hedging seesaw

**Before:**
> While zero trust offers many benefits, it's also important to consider its limitations. On the one hand, zero trust can significantly improve security posture. On the other hand, implementation can be challenging. However, with proper planning, organizations can successfully navigate these challenges.

**After:**
> Zero trust works for identity and east-west network access. It doesn't help with supply-chain compromise, insider abuse of legitimate entitlements, or OT networks where you can't put an agent on a 15-year-old PLC. Buy it for the first. Don't pretend it solves the second.

**What changed:** replaced symmetric hedging with an opinion ("works for A, doesn't work for B, C, D") and a purchasing recommendation. Took a position.

---

### Fix-up 6: Bullet-list padding

**Before:**
> Secure software development requires a comprehensive approach:
> - Implement robust access controls to ensure only authorized users can access sensitive resources.
> - Leverage encryption both in transit and at rest to protect data confidentiality.
> - Conduct thorough code reviews to identify potential vulnerabilities before deployment.
> - Utilize automated security testing tools to streamline the vulnerability detection process.
> - Foster a culture of security awareness throughout the organization.

**After:**
> Three controls that pay for themselves in the first year, in order: (1) branch-protection + required review on the main branch (catches 60%+ of credential commits before push); (2) Dependabot + a weekly triage hour (kills ~80% of known-CVE exposure); (3) SAST in CI, tuned (default rulesets are noise). Everything else is marginal until those three are working.

**What changed:** replaced five generic bullets with three ranked ones, each with a rough effectiveness number and a failure mode for the defaults.

---

### Fix-up 7: Sycophantic closer

**Before:**
> In conclusion, by following these comprehensive best practices and leveraging the powerful insights outlined in this article, you'll be well-equipped to navigate the intricate challenges of modern application security and empower your organization to thrive in today's ever-evolving threat landscape. Stay safe out there!

**After:**
> Do the three things in the section above. Skip the rest until those work. If you ship the fourth priority before the first, you're doing security theater.

**What changed:** removed conclusion-announcement, removed six Tier-1 words, replaced generic exhortation with a ranking discipline. The closing sentence is a criticism, not a pat on the head.

---

### Fix-up 8: "Not just X, but Y" plus tricolon

**Before:**
> DICOM isn't just a protocol — it's an ecosystem, a language, and a lifeline for modern radiology. It's not just about moving images; it's about enabling diagnosis, collaboration, and care.

**After:**
> DICOM is a 1993 wire format that hospitals run over flat networks because PACS vendors never implemented TLS properly. Treat it as plaintext on an untrusted LAN and you'll get the threat model right.

**What changed:** deleted two "not just X" constructions and two tricolons; replaced with a dated technical fact, a specific vendor failure, and a threat-modeling instruction.

---

### Fix-up 9: False-profundity opener

**Before:**
> At its core, fundamentally speaking, authentication is essentially about trust. In essence, it's about answering a critical question: who are you, really?

**After:**
> Authentication answers one question: is this request coming from the principal it claims? MFA factors, WebAuthn, SSO federation: all of these are engineering around "we don't actually know, so let's raise the cost of lying."

**What changed:** removed four profundity markers in a single sentence, replaced with a one-sentence definition and a frame that names the actual engineering problem.

---

### Fix-up 10: Copy-pasted advisory voice

**Before:**
> A recent vulnerability (CVE-2025-XXXXX) has been disclosed in [Product], which could allow remote attackers to execute arbitrary code. Users are strongly encouraged to apply the latest security updates as soon as possible to mitigate this critical risk.

**After:**
> CVE-2025-XXXXX is a pre-auth RCE in [Product] 4.2.0–4.4.3 via a crafted `/api/import` multipart boundary. The patch (4.4.4, March 12) adds a length check the parser should have had since 2019; the same bug class caused CVE-2022-YYYYY in the same file. If you run this product, `grep` your access logs for `POST /api/import` with `Content-Type` containing `boundary=` and a `Content-Length` above ~64KB; that's every attempt, exploit or not.

**What changed:** replaced advisory-speak with the actual vulnerability class, the affected versions, the specific endpoint, the historical-bug pattern ("this team has shipped this bug before"), and a grep command the reader can run tonight. This is the mode of tptacek, Tavis Ormandy, and Project Zero.

---

## 9. Mechanical verification

Two kinds of check live in this file. Some are countable, and a script can run them. Others need a human read, and no script catches them. Run both. Passing the first kind is necessary, not sufficient.

### Scriptable caps

`scripts/check-draft.sh <draft.md>` counts the high-signal hard caps from §7: em-dash density, Tier-1 banned words, `not just / not only`, the `however / moreover / furthermore / additionally` pile-up, and closing exhortations. It exits non-zero when a cap is busted. Run it at the end of Pass 2, before the validation pass.

The script's Tier-1 list is a high-signal subset, not the full §1 catalog, so a clean run does not retire the §1 word-level pass. The script also assumes a blog draft as input. Run it against a skill reference file and the Tier-1 and phrase checks will flag words the file legitimately quotes. Only the em-dash count is meaningful as a regression gate on the skill's own prose:

```bash
for f in SKILL.md references/*.md; do
  printf '%s: ' "$f"
  echo "$(grep -o '—' "$f" | wc -l) em dashes, $(wc -w < "$f") words"
done
```

Every file in this skill is held to the same 3-per-1,000-words cap it imposes on drafts. An edit that pushes a file over is a regression: the skill's own prose is the example the model reads most closely, and an example that breaks the rule trains the model to break it.

### Judgment checks (no script)

These cannot be counted. A draft that passes the script can still fail every one:

- **The antithesis rhythm (§4q).** Read each section. If most key sentences pivot on a contrast, the rhythm is the tell. Break the run.
- **The negative-to-positive arc (§4r).** Would the ending change if the evidence were worse? If not, the uplift is structural. Cut it.
- **False balance (§4e).** Does each counterpoint reflect a real disagreement, or is it fairness theater?
- **The restatement loop (§4g) and summary paragraphs (§4h).** Is any point made twice?
- **The smell tests (§5)** and the author-showed-up check from the note after §1e.

The judgment checks are what separate fluent, anti-pattern-free prose from writing worth reading. Run them even when the script is green.
