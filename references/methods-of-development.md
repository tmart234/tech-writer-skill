# Methods of Development

> Load this file at Pass 0 when the post is longer than ~1,200 words. SKILL.md picks the *content type* (tutorial / how-to / deep dive / opinion / essay); `multi-pass.md` Pass 0 hooks to this file to pick the *method of development* — how the body organizes its evidence inside that content type. The two are orthogonal. Name a primary method (and any secondaries) in the Pass 0 notes; the body inherits the structure.
>
> Companion files: `multi-pass.md` (where this file gets loaded), `craft-of-writing.md` (§1 names the discovery-path failure this file exists to fix), `writing-rules.md` (procedural-section discipline is what §1 below looks like at sentence level).

## Why this file exists: the discovery-path failure

The default body structure of a draft is the writer's discovery order: *first I noticed X, then I tried Y, then I found Z*. McEnerney calls this "writing process ≠ reading process" (`craft-of-writing.md` §1). The fix is mechanical: instead of letting the body inherit the order you found things in, pick a method of development that fits how the *reader* needs to consume them, and reshape the body to match.

This file is the catalog of patterns to pick from. Each method has a shape, a fit, a failure mode, and a sub-variant where one exists. Most real posts use two or three in combination; the *primary* method is the one that organizes the body's spine, and any secondaries handle sections that don't fit the spine.

When the post is short (under ~1,200 words), skip this step. A short post carries linearly on its salient idea; imposing a structural pattern is ceremony.

## The decision matrix

|If the body is mostly about…                            |Primary method                      |Common secondary                                  |
|--------------------------------------------------------|------------------------------------|--------------------------------------------------|
|Steps the reader will perform in order                  |**Sequential** (§1)                 |Cause-and-effect for the "why each step" rationale|
|Events that happened in time order                      |**Chronological** (§2)              |Cause-and-effect for the post-mortem section      |
|Walking the reader through a system, device, or topology|**Spatial** (§3)                    |Definition for any unfamiliar component           |
|Sorting a class of things into categories               |**Division-and-classification** (§4)|Comparison once the categories are set up         |
|Measuring N options against the same criteria           |**Comparison** (§5)                 |Order-of-importance for ranking the criteria      |
|Explaining why something happened or will happen        |**Cause-and-effect** (§6)           |General-to-specific for laying out the chain      |
|Establishing what a term means before using it          |**Definition** (§7)                 |Comparison if the term is best defined by contrast|
|Ranked findings, recommendations, or claims             |**Order-of-importance** (§8)        |—                                                 |
|Teaching a 101 reader an unfamiliar topic               |**General-to-specific** (§9)        |Definition for vocabulary as you go               |
|Persuading a skeptical reader from cases to conclusion  |**Specific-to-general** (§9)        |Order-of-importance, increasing                   |

If you can't pick a row, the body doesn't yet have a shape; you're probably still in discovery-path mode. Walk away from the draft for ten minutes and come back to pick.

-----

## 1. Sequential

**Shape:** numbered steps where order is load-bearing — step N+1 depends on step N.

**Fit on this beat:** protocol walkthroughs (the A-ASSOCIATE → C-ECHO → A-RELEASE flow), reproduction steps for a CVE, fuzzer setup, lab provisioning, exploit chains where the order of primitives matters.

**Failure mode — pseudo-sequential prose.** Writing steps as paragraphs ("First, … Then, … After that, …") instead of a numbered list. Forces the reader to reconstruct the sequence; defeats the purpose. If order matters, use numbers. If order doesn't matter, you're not using this method — you're using division-and-classification (§4) and should stop pretending.

**Failure mode — discovery-order masquerading as sequential.** "Here's what I did to reproduce the bug" written as a literal log of investigation, including dead ends. The reader doesn't need to retrace your wrong turns; they need the path that worked. Demote dead ends to a "what didn't work and why" section if they're load-bearing, or cut them. (Same failure as `craft-of-writing.md` §1, applied to procedural sections.)

**Sentence-level discipline:** imperative mood, active voice, present tense, one operation per step, warnings before the affected step. `writing-rules.md` *Procedural sections* is the full ruleset. Non-negotiable inside sequential bodies.

**Example shape:**

```
## Reproducing the C-STORE write primitive
1. Build the malformed P-DATA-TF PDU with the oversize length field.
2. Negotiate the association with the target AET (see §X for the AET probe).
3. Send the PDU and capture the response in Wireshark.
4. Verify the write landed by inspecting the storage path.
```

## 2. Chronological

**Shape:** events in calendar/clock order, with the time axis as the organizing spine.

**Fit on this beat:** incident timelines, vulnerability disclosure timelines, post-mortems, "how this bug class evolved" historical posts, regulatory-action retrospectives (FDA letters, CISA advisories), accident-investigation pieces.

**Failure mode — chronology without consequence.** A timeline that lists what happened but never reaches the cause-and-effect chain. *"On day 0, the alert fired. On day 2, the team triaged. On day 5, the patch shipped."* What did the reader learn? Pair chronological with cause-and-effect (§6) for the post-mortem section, or with order-of-importance (§8) when you want the reader to remember the worst hour of the timeline rather than the chronologically last one.

**Failure mode — buried lede.** Strict chronology forces you to write the boring background first. If the reader needs to know the outcome to care about the timeline, open with the outcome and then enter chronological mode. The Pass 3 *Structural restructuring check* (multi-pass.md item 18) catches this.

**Verb tense discipline:** past tense throughout for completed events. Switching to present tense ("the operator radios in, the dispatcher pulls the runbook") creates a vivid narrative voice that's fine for a single set-piece paragraph but exhausting across a whole timeline. Pick one and stick with it.

**Example shape:**

```
## Timeline
- T+0  Operator observes anomalous DICOM traffic on segment 4.
- T+12m  First C-STORE write succeeds against the unauthenticated AET.
- T+47m  Imaging modality reports a study with patient data overwritten.
- T+2h   On-call notifies vendor; vendor acknowledges the AET-as-password design.
- T+38d  Vendor ships hotfix.
- T+91d  Public advisory, CVE assignment.
```

## 3. Spatial

**Shape:** describe the parts of a thing in the order a reader would visually traverse it — outside to inside, left to right, front to back, top to bottom of a stack, edge to core of a network.

**Fit on this beat:** device architecture walkthroughs (anatomy of an imaging modality, anatomy of an HSM, anatomy of a TPM), network topology descriptions, packet-structure annotations, firmware-region maps, attack-surface tours.

**Failure mode — missing traversal logic.** Spatial works because the reader's eye follows a path. If your traversal jumps around — *the GPU is here, the firmware is here, oh and the network stack is over there* — the spatial logic breaks and the reader stops modeling the system. Pick a single traversal axis (data flow, physical layout, trust boundary, attack ingress) and follow it consistently. Switch axes only with an explicit *"now consider the same device from the firmware's perspective"* signal.

**Failure mode — spatial without scale.** A diagram of a device with no indication of which parts the rest of the post is about. The spatial walkthrough should foreshadow the post's focus: spend more sentences on the components the post will return to, fewer on the ones you mention for completeness.

**Visual pairing rule.** Spatial bodies almost always need a diagram or annotated photo. Develop the visual alongside the prose (`writing-rules.md` *Procedural sections* §5); a spatial section without its supporting visual is incomplete.

## 4. Division-and-classification

**Shape:** break a complex topic into parts (division: "the system has these five components") or sort items into categories (classification: "these vulnerabilities fall into four classes").

**Fit on this beat:** taxonomies (threat-modeling method taxonomy, bug-class taxonomy, fuzzer-type taxonomy), system overviews ("the five subsystems of a DICOM stack"), tool-category breakdowns ("static analyzers vs. dynamic analyzers vs. interactive analyzers"), regulatory-framework maps (FDA / IEC 62443 / IEC 81001-5-1 / TIR 57 and what each one covers).

**Sub-variants:**

- **Pure division** — the whole splits into named parts that don't overlap. Useful for system descriptions where each part is its own subsection.
- **Pure classification** — instances of a class get sorted into named buckets. Useful for "kinds of X" posts where the reader will look up specific buckets later.

**Failure mode — overlapping categories.** Buckets that aren't mutually exclusive. *"The four kinds of fuzzers are coverage-guided, mutation-based, generation-based, and protocol-aware"* — coverage-guided fuzzers can be mutation-based; protocol-aware fuzzers can be either. The reader will spot it and lose trust in the rest of the post. Make the axes orthogonal, or pick one axis and stick with it.

**Failure mode — premature taxonomy.** A taxonomy that exists to make the writer look organized rather than to help the reader. If you can't name a decision the reader makes differently because of the taxonomy, cut it. (Same test as `writing-rules.md` *Every new idea earns its place.*) The cleanest test: a working practitioner should be able to say *"Oh, mine is bucket 3"* and immediately know what to do next. If the taxonomy doesn't enable that, it's not a taxonomy yet, it's a list.

**Failure mode — exhaustive without prioritized.** A complete taxonomy with no signal about which bucket the reader most likely needs. Pair with order-of-importance (§8) so the most common or most dangerous bucket leads.

## 5. Comparison

**Shape:** measure two or more items against the same set of criteria.

**Fit on this beat:** tool comparisons (Burp vs. ZAP, AFL vs. AFL++ vs. libFuzzer), vendor evaluations, before/after patch analyses, standard-A vs. standard-B (DICOM TLS vs. HL7 FHIR auth), hardware-revision comparisons, "what changed between v4 and v5" of a standard.

**Two sub-variants — pick one explicitly:**

- **Whole-by-whole.** Cover everything about item A, then everything about item B, then C. Best when the reader needs to understand each item as a unit before comparing — e.g., a reader evaluating tools they haven't met before. The risk is that the reader can't actually compare without flipping back and forth between sections; pair with a part-by-part summary table at the bottom.
- **Part-by-part.** Feature 1 across A, B, C. Then feature 2 across A, B, C. Best when the reader already knows the items and is making a decision on specific criteria. The risk is that the items lose coherence as wholes; the reader can name "which is fastest" but not "what each one *is*." Pair with a one-sentence whole-by-whole summary at the top of each item's first mention.

Tables are the densest part-by-part form and are usually the right move for comparison sections. A comparison post without a table is rarely doing comparison properly.

**Failure mode — false equivalence.** Comparing items that aren't actually comparable. Burp Suite and `curl` aren't the same kind of thing; comparing them on "ease of use for authenticated scans" implies they're alternatives when one is a platform and the other is a primitive. Name the category before the comparison: *"Among interactive web proxies, these four…"*. If the category is too narrow to populate, the comparison wasn't real to begin with.

**Failure mode — criteria-shopping.** Picking criteria that flatter the conclusion you already wanted. If the criteria came from somewhere — a regulatory checklist, a NIST publication, a procurement RFP — name the source. If you invented them, justify each one in a sentence before the comparison begins. Comparison without justified criteria reads as advocacy.

**Failure mode — comparison without dispositions.** A side-by-side that doesn't help the reader pick. The Pass 0.5 *named winner / named loser* discipline applies here too: who is better off picking A over B, and under what condition? A comparison section that ends with *"both have their place"* and no further guidance failed.

## 6. Cause-and-effect

**Shape:** demonstrate that one thing produced (or will produce) another. The chain must be defensible — claimed causes need evidence beyond co-occurrence.

**Fit on this beat:** root-cause analyses, *"why this design produces this bug class"* deep dives, incentive analyses ("why vendors ship unpatched dependencies"), failure-mode walkthroughs ("how a single misconfigured AET leads to PHI exfiltration"), regulatory-impact analyses.

**Failure mode — sequence as cause.** Two events that happened in the same timeline aren't necessarily causally linked. *"They deployed the WAF, and the next day the attacks stopped, so the WAF stopped them."* Maybe. Maybe the attacker moved on. Maybe the C2 went down. State the alternative explanations and either rule them out with evidence or acknowledge them. Alred's three tests apply: evidence should be *sufficient* (one or two examples isn't enough), *representative* (don't survey only people who agree with you), and *demonstrable* (show the mechanism, not just the correlation).

**Failure mode — single-cause oversimplification.** Most security failures have several plausible causes; reporting one is rarely the whole story. *"The breach was caused by an unpatched dependency"* — and the inadequate dependency-scanning process, and the deployment pipeline that bypassed it, and the on-call rotation that ignored the alert. Report multiple plausible causes when they're real, in decreasing order of evidence weight (§8). The Pass 0.5 stakes ledger (`multi-pass.md`) is the test: a single-cause story usually has a single named winner; a multi-cause story has several.

**Failure mode — speculative effect.** Claiming a future consequence ("this will eventually lead to X") without evidence that the chain actually closes. Write the chain in the actual tense it deserves: *"could lead to"* if speculative, *"has led to, in these specific incidents"* if documented. The Pass 3 *consequence-anchor check* (multi-pass.md item 11) catches the lazy version.

## 7. Definition

**Shape:** establish what a term means before using it. Formal pattern: *term = class + differentiating feature*. *"A DIMSE-C operation [class: a DICOM service operation] that performs unsolicited storage of a SOP instance [differentiating feature]."*

**Fit on this beat:** 101-level posts where the post is *about* clarifying a term ("what is a TPM, really?"), the opening section of a 201 post where one piece of vocabulary is load-bearing, glossary-style reference pages, posts that introduce a coined name (`writing-rules.md` *Coin names for repeated phenomena*).

**Failure mode — circular definition.** *"A trust boundary is the boundary across which trust must be established."* If you can't define a term without using it or its synonyms, you don't have a definition yet — you have a placeholder. The fix is usually to define by contrast: *"A trust boundary is where the system stops assuming the caller is legitimate and starts verifying it. Below the boundary, requests are honored. Above it, they aren't, unless they prove themselves."*

**Failure mode — premature precision.** A definition so technically precise that the reader bounces. For 101 audiences, define by example before defining by predicate. *"A TPM is a small chip on your motherboard that holds secrets the OS can't read directly — your disk-encryption key, for example."* The formal definition comes later, after the reader has a mental anchor.

**Failure mode — definition without payoff.** A defined term that the post then doesn't use to do work. If the rest of the post would read the same after deleting the definition, delete it. (Same test as `writing-rules.md` *Every new idea earns its place.*)

**Combining rule.** Definition rarely stands alone as the primary method for a full post; it's a sub-method that opens or anchors a section organized by another method. The exception is a 101 post whose entire purpose is *"what is X?"* — in which case the definition spine carries.

## 8. Order-of-importance

**Shape:** ranked points, claims, findings, or recommendations.

**Two sub-variants — pick deliberately:**

- **Decreasing order.** Most important first, then descending. Best for busy decision-makers who may stop reading after the first claim. Default for executive memos, vulnerability-writeup TL;DRs ("am I affected?" block first), risk-prioritized recommendation lists.
- **Increasing order.** Build to the strongest point. Best when the reader needs to follow a chain of weaker claims before the strongest will land — typically for persuading skeptics or for posts where the salient idea depends on cumulative evidence. The risk is that a written reader (unlike a talk audience) can lose patience before the payoff; use sparingly in long-form text.

**Failure mode — false ordering.** A list presented as ranked that isn't. *"Here are the five biggest threats to…"* with no defensible ranking among them. If the order doesn't carry information, use division-and-classification (§4) instead and let the reader prioritize.

**Failure mode — order-of-importance disguised as discovery order.** *"Here are my findings, in the order I found them, which happens to be roughly worst-to-best."* No. Re-rank or re-label. A reader who notices the ordering is accidental will distrust the rest of the analysis.

**Pairing rule.** Order-of-importance almost always pairs with another method as the secondary. A decreasing-order list of recommendations probably has each item internally structured by cause-and-effect (§6) or general-to-specific (§9). Name both methods in the Pass 0 notes when they apply.

## 9. General-to-specific / specific-to-general

Two methods, mirror images of each other. Pick one explicitly.

### 9a. General-to-specific

**Shape:** open with the general statement, then layer in increasingly specific evidence, examples, and qualifications.

**Fit on this beat:** 101-level explanatory posts, tutorials that introduce a concept and then teach the reader to use it, deep dives whose salient claim is best stated up front and then defended.

**Failure mode — abstract opening.** Opening at the most general claim *with no concrete anchor*. Abstractions don't land without something to peel them off of. The fix is `writing-rules.md` *Introductions* (open with a concrete artifact, then abstract from it). General-to-specific is the *body* shape; the intro still needs a concrete hook before the general claim arrives.

**Failure mode — losing the general thread.** As specifics accumulate, the post forgets what general claim they were supporting. Every section in a general-to-specific body should be answerable to the question: *which part of the general claim does this support?* If a section doesn't answer, cut it or move it.

### 9b. Specific-to-general

**Shape:** open with concrete cases, build through accumulating evidence, conclude at the general claim.

**Fit on this beat:** opinion posts persuading skeptical readers (the general claim won't land cold; the cases earn it), post-mortems that build to a systemic conclusion, "we kept seeing this pattern across N incidents and here's what we think it means" pieces.

**Failure mode — the reader can't see where you're going.** The reader gets three specific cases and starts asking "so what?" before you reach the general claim. The fix: signal the destination in the intro without spoiling it. *"Across the three incidents below, the same failure mode appears. By the end, I'll argue it's not coincidence — it's structural."* Now the reader has a frame for what the cases are doing.

**Failure mode — induction without justification.** Concluding the general from too few cases. Three incidents don't make a pattern; they make a hypothesis. If you can't either cite more cases or name the mechanism that explains why three cases generalize (cause-and-effect, §6, applied at the general level), tone the conclusion down to *"in these cases, X. Whether it generalizes is an open question."* Restraint here builds credibility for the next post.

-----

## Combining methods

Most real posts use two or three methods. The *primary* method organizes the body's spine; secondaries handle sections that don't fit the spine. Name both in the Pass 0 notes — *"Primary: comparison, part-by-part. Secondary: order-of-importance, decreasing, for the recommendation section."*

Common combinations from this skill's beat:

|Post shape                           |Primary                                    |Secondary                               |Tertiary                                                                 |
|-------------------------------------|-------------------------------------------|----------------------------------------|-------------------------------------------------------------------------|
|Vulnerability writeup (CVE deep dive)|Sequential (reproduction)                  |Cause-and-effect (root cause)           |Order-of-importance, decreasing (affected versions, remediation priority)|
|Tool comparison                      |Comparison, part-by-part                   |Order-of-importance (which to pick when)|—                                                                        |
|Protocol deep dive                   |Spatial (anatomy) → Sequential (operations)|Definition (vocabulary as it appears)   |—                                                                        |
|Threat-modeling methodology survey   |Division-and-classification                |Comparison, part-by-part                |—                                                                        |
|Incident post-mortem                 |Chronological                              |Cause-and-effect                        |Order-of-importance for the lessons section                              |
|Opinion / argument from cases        |Specific-to-general                        |Cause-and-effect (the mechanism)        |—                                                                        |
|101 explainer                        |Definition → General-to-specific           |—                                       |—                                                                        |
|Regulatory-impact analysis           |Cause-and-effect                           |Comparison (before-rule vs. after-rule) |Order-of-importance for who's most affected                              |

**Switching mid-post.** Switching methods inside a post is fine — most long posts do — but flag the switch with an explicit transition. *"Up to this point we've been walking the protocol spatially; from here on the analysis is causal: why this design produces this bug class."* Readers can follow any number of switches if the transitions name them. Unsignaled switches read as disorganization.

**Mixing without committing.** A post that has a little bit of everything — *some* comparison, *some* cause-and-effect, *some* chronology — usually means no method was picked. If you can't name a primary in the Pass 0 notes, the body will read as discovery order regardless of how clean the sentences are. Pick one. The body's spine is the first decision the rest of the post can't fix.

-----

## When to skip this file

- **Short posts (under ~1,200 words).** A short post carries linearly on its salient idea; imposing a structural pattern is ceremony.
- **Posts reviewed mid-flight.** When `multi-pass.md`'s "reviewing an existing draft" mode applies, the body shape is already a fact; the question becomes whether the existing shape matches the content type and whether the discovery-path failure is present. If it is, the fix is a restructure (Pass 3 item 18), not a re-pick from this file.
