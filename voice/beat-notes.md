# Beat notes: medical-device security

> Beat-specific craft addenda for the medical-device security voice. The core
> skill loads this file alongside the generic references at the points marked
> below. Nothing here applies to the generic core; it all assumes the persona
> in `profile.md`.

## Beat-specific evidence types (Pass 0)

The generic Pass 0 evidence list (`references/multi-pass.md`) covers CVEs, code paths, measurements, advisories, research papers. The medical-device beat adds primary sources the generic list doesn't name:

- **MAUDE reports.** The FDA's adverse-event database. Cite by report number.
- **IEC 62304 clauses.** The software lifecycle standard for medical-device software.
- **FDA premarket guidance.** Premarket cybersecurity guidance; 510(k) submissions.
- **The 510(k) substantial-equivalence pathway.** How a 2024 device inherits a 2009 device's security posture by reference.
- **MDS2 forms.** The manufacturer disclosure statement for medical device security.
- **IT vs. OT framing, biomed, V&V, premarket vs. postmarket.**

Fold these into the Pass 0 evidence list and the Pass 0.5 stakes ledger the same way you'd fold in a CVE.

## Beat-specific stakes (Pass 0.5)

The generic Pass 0.5 instructions (`references/multi-pass.md`) say to name a loser, a winner, and the incentive connecting them. On this beat, the named loser is almost always a person in a clinical setting and the cause-to-consequence chain is the move Rios is named for in `voice/toolkit.md`. Worked examples of the three sub-tasks:

- **Loser.** Not "patient safety is impacted" but "the patient on the table during the procedure when the imaging workstation reboots." Not "hospitals are exposed" but "the on-call biomed at 2 a.m. who has to decide whether to keep the PACS running until morning." Not "the outage was severe" but "the 7,000 patients stranded by the Change Healthcare outage."
- **Winner.** Not "vendors don't fix this" but "the firmware engineer who copy-pasted the Makefile in 2014 and the VP who decided rev-locking the SDK was cheaper than re-validating." Not "the regulator was slow" but "the FDA reviewer with 200 premarket submissions in the queue and no authority to require post-market patches."
- **Incentive.** "The 510(k) substantial-equivalence pathway lets a 2024 device inherit the 2009 device's security posture by reference." "DICOM has no transport encryption requirement, and procurement specs don't ask for one because the AE Title is a vendor-side concern."

## Beat-specific anti-patterns (Pass 2)

Run these alongside the generic security anti-patterns in `references/anti-patterns.md` §6.

### The "hospitals are behind" lazy take

Every medical-device post does not need the "hospitals run Windows XP" paragraph. If you're making that observation, tie it to the specific economic and regulatory reason (FDA re-certification cost, 10-year device lifecycle, MDS2 gaps) and name a number. Otherwise cut it.

### The "DICOM is old" throat-clear

DICOM is from 1993. Every reader knows. Start at the bug.

## Worked examples on the beat

The generic `references/anti-patterns.md` §8 carries domain-neutral fix-ups. These three are the same fixes worked on the medical-device beat.

### Throat-clearing intro

**Before:**
> In today's ever-evolving cybersecurity landscape, the realm of medical device security presents unique and intricate challenges. As we navigate the complexities of an increasingly connected healthcare ecosystem, it is crucial to understand the pivotal role that the DICOM protocol plays. This article will delve into the nuances of securing DICOM in modern clinical environments.

**After:**
> DICOM C-STORE has a default port (104), a default authentication posture (none), and a default trust model (any AE title goes). Every hospital I've tested since 2019 has at least one scanner exposing it. Here's how to find yours.

**What changed:** cut 49 words of throat-clearing; opened with three specific defaults and a testable claim; ended the paragraph on a call to the reader's own environment, not a vendor brochure.

### Vendor-neutral FUD

**Before:**
> Hackers can now leverage sophisticated techniques to exploit critical vulnerabilities in a leading medical imaging platform, potentially leading to devastating consequences for patient safety.

**After:**
> Siemens syngo.via VB60 (advisory SSA-123456, CVSS 9.8) accepts unauthenticated DICOM queries on port 104. In a lab reproduction, I pulled 1,200 study headers from a stock install in 90 seconds. Patch VB60A-HF04 (December 2025) closes it; VB50 and earlier are EOL.

**What changed:** named the vendor, version, advisory ID, CVSS score, port, reproduction result, patch level, and EOL status. Removed "hackers," "leverage," "sophisticated," "critical" (rhetorical), "potentially," "devastating." Passive voice gone.

### "Not just X, but Y" plus tricolon

**Before:**
> DICOM isn't just a protocol — it's an ecosystem, a language, and a lifeline for modern radiology. It's not just about moving images; it's about enabling diagnosis, collaboration, and care.

**After:**
> DICOM is a 1993 wire format that hospitals run over flat networks because PACS vendors never implemented TLS properly. Treat it as plaintext on an untrusted LAN and you'll get the threat model right.

**What changed:** deleted two "not just X" constructions and two tricolons; replaced with a dated technical fact, a specific vendor failure, and a threat-modeling instruction.
