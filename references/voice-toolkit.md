# Voice Toolkit — writers to steal from, per post

> Load this file during Pass 0 (evidence + planning) and again during the Draft pass. It is the reference for the "Pick your influences" step in the `technical-blog-writer` skill.

## How to use this file

You're not picking a single voice for the whole blog — the medical-device beat profile (in SKILL.md) is the standing voice. This file is a **toolkit of moves** to pull from per post. Most posts steal from two or three of these writers, not one. Pick deliberately:

1. **Pick the structural move** (how the post is built — what carries the argument). One of: Stone, Zalewski, Goodspeed, Schneier (essay), Phineas Fisher.
2. **Pick the rhetorical register** (how the post sounds — what carries the emotion). One of: Beaumont, McAfee, The Grugq, Hutchins, Zetter.
3. **Pick the audience-anchor move** (who the post is talking to and how it lands the consequence). One of: Rios, Woods, Fu, Green.

Two-to-three writers per post is the target. More than that and the voice splinters; one and the post sounds like a tribute act.

The medical-device beat profile in SKILL.md is the floor. These moves are *additive* to it — they sharpen a specific post, they don't replace the voice.

## The taxonomy

| Writer | Core quality to steal | When to reach for it |
|---|---|---|
| **Zalewski** | Bottom-up reasoning — explain the system so failure modes fall out on their own. | Protocol or architecture posts where the bug is *implied by* the design once you see it. DICOM PDU walkthroughs, association negotiation, fuzzing harness design. |
| **Stone** | Disciplined RCA template — vulnerability → trigger → primitive → patch → variant. | Vuln writeups. Always. This is the structural backbone for any "here is the bug" post. |
| **Goodspeed** | Project-as-adventure — make hardware hacking feel tractable and fun. | Teardowns, bringing up a debug interface, decapping, glitching. Posts where the work is the story. |
| **Rousseau** | Visual scaffolding — diagrams and annotated screenshots carry load that prose can't. | Anything with state machines, packet flows, or multi-party protocols. If a sentence keeps reaching for "as shown in the diagram," the diagram needs to do more work and the prose less. |
| **Green** | "Attack of the week" — news hook → primer → math → critique. Analogies do heavy lifting. | Posts pegged to a recent disclosure or a specific paper. The primer is the move — pause and define enough crypto/protocol to make the critique land. |
| **Beaumont** | Operational urgency — strip vendor framing, name the actual risk in real time. | Active exploitation, vendor advisory critique, anything where readers are deciding *what to do this week*. |
| **Schneier** | Compress arguments into reusable maxims that propagate beyond the original essay. | Essay posts. The four moves in order: artifact → abstraction → incentives → prescription. The maxim lands in the prescription move. |
| **Zetter** | Open on a person, not a vulnerability. Human stakes carry the technical exposition. | Long-form posts where the reader needs a reason to care before the technical depth shows up. Patient harm, biomed war stories, regulatory failures with names attached. |
| **Rios** | Cause → effect → who gets hurt. Map every flaw to a regulated-domain consequence. | Default move for the medical-device beat. Every technical claim earns its place by reaching the clinical or operational consequence with names attached. |
| **Woods** | Frameworks and named principles. Coalition language, not finger-pointing. | Posts aimed at the regulator or hospital-CISO audience where the goal is structural change, not naming a single bad actor. |
| **Fu** | Empirical demonstration. Physics and reproducible experiments carry the argument. | Hardware-and-physics posts. RF, power-glitching, sensor tampering. The experiment is the argument. |
| **McAfee** | Defiance + persona + apocalyptic register when earned. | Almost always as a *tactical Sharp landing* — one defiant sentence in an otherwise Measured post, earned by the paragraph above it (see cross-reference below). Whole-post McAfee is rare and needs the whole-post Sharp evidence bar. Earn it with concrete evidence — don't lead with the register. |
| **The Grugq** | Aphoristic compression. One-line maxims that pre-load whole arguments. | The travelling line. Every post should have one; this is the move that produces it. Closer-adjacent. |
| **Phineas Fisher** | Reproducibility as politics — leave no technical ambiguity, demystify the magic. | When the post is teaching the reader to do the thing themselves. Toolchain writeups, NSE script walkthroughs, fuzz harness construction. The stance is "this isn't 31337 wizardry, here's exactly how it works." |
| **Hutchins** | Radical transparency — own the mistakes; trust compounds from candor. | Personal post-mortems. Dead ends in research. The wrong turn that cost two weeks. Use it where the candor is load-bearing — not as decoration. |

## Combinations that work

A few combinations recur often enough on the medical-device beat to be worth naming:

- **Stone + Rios + The Grugq.** Vuln writeup with the patient-harm consequence and one travelling line. Default for any "here is the DICOM bug" post.
- **Zalewski + Phineas Fisher + Goodspeed.** Protocol or tooling deep-dive where the reader walks away able to do the thing themselves. The Scapy contrib post, NSE script writeups, C-SCARE harness internals.
- **Schneier + Woods + Beaumont.** Essay register on a regulatory or systemic failure. Named principle, coalition language, operational urgency. Lands as a piece a regulator could cite.
- **Zetter + Fu + The Grugq.** Long-form post for a mixed audience where the human opener carries non-technical readers and the experiment carries the technical ones. Pheromone-of-the-week pieces, biomed-in-a-basement war stories.
- **Hutchins + Goodspeed + The Grugq.** Personal post-mortem. The dead end is the point; the candor earns the maxim at the close.
- **McAfee + Rios + Beaumont.** Two shapes: (1) the more common case is *Measured at the post level*, with McAfee landing once tactically — a single defiant sentence after the paragraph that documents the vendor's worst behavior, then back to Measured. Rios carries the patient-harm consequence; Beaumont's operational urgency carries the "what to do this week" thread. Earned paragraph-by-paragraph. (2) The whole-post Sharp version is rare and requires the whole-post Sharp evidence bar — vendor or regulatory call-out where the entire body backs the volume. See register-selection rules in SKILL.md and the Pass 3 tactical-Sharp landing check.

## Cross-references to the rest of the skill

- The structural-move pick (Stone, Zalewski, Goodspeed, Schneier-essay, Phineas Fisher) is the same decision as Step 1 (content type). Stone → vuln writeup, Schneier-essay → essay form, Goodspeed → tutorial-with-stakes, Zalewski → deep dive, Phineas Fisher → how-to with reproducibility discipline. Pick consistently.
- The rhetorical-register pick interacts with the **Measured/Sharp register selection** in Pass 0 (SKILL.md). Beaumont, Zetter, Hutchins, Woods all live comfortably in *post-level Measured*. The Grugq's compression move works in both registers; the persona doesn't. **McAfee is the canonical tactical-Sharp-landing move, not a whole-post register.** Most McAfee uses are a single defiant or apocalyptic sentence dropped into an otherwise Measured post — earned by the paragraph above, not by a Pass 0 register commitment. Whole-post McAfee is rare and needs the whole-post Sharp evidence bar. See SKILL.md persona block ("tactical Sharp landings") and the Pass 3 tactical-Sharp landing check.
- The audience-anchor pick interacts with the **multi-audience clarity test** in Step 2 (SKILL.md). Rios anchors at the biomed/clinical audience; Woods at the regulator; Fu at the researcher; Green at the cross-discipline reader who needs the primer.
- The travelling-line discipline (The Grugq, Schneier) is the same decision as the **closer pattern** in SKILL.md (Step 3 → Closers → "Catchphrase reuse"). Coin the line in the body, land it once at the close.
