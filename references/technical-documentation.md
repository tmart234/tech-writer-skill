# Technical Documentation — distilled sources

> **Scope.** This file is the reference base for technical *documentation* — manuals, procedures, instructions, reports, specs, proposals, technical correspondence. It is **out of scope** for the `technical-blog-writer` skill's drafting workflow, which targets long-form argument/opinion/essay. Use this file when the task is a document the reader will consult, not an argument the reader will be persuaded by. See §18 for the boundary.
>
> Source-tagged synthesis of four sources. Operational, intended to feed a future `technical-writer` skill distinct from the existing `technical-blog-writer` skill.

Source legend used throughout:

- **[A]** Alred, Brusaw, Oliu, *Handbook of Technical Writing*, 9th ed., Bedford/St. Martin's, 2008. 664pp. A-Z encyclopedia built around the "Five Steps to Successful Writing" spine.
- **[P]** Jordan, Kleinman, Shimberg (eds.), *Handbook of Technical Writing Practices*, Vol. 1, Wiley-Interscience / STC, 1971. 753pp. Multi-author chapters per document type. Dated but useful taxonomy.
- **[N]** Garcia & Bondoc, "Mastering the Art of Technical Writing in IT: Making Complex Things Easy to Understand in Atate Campus," *World Journal of Advanced Research and Reviews*, 2024. 9pp. Survey of 100 IT students on barriers and preferences.
- **[S]** SkillPath, *Mastering the Art of Technical Writing*, virtual workshop brochure. 1pp. Three-session course outline.

-----

## 1. Source map: who contributes what

|Topic                                         |A  |P  |N  |S |
|----------------------------------------------|---|---|---|--|
|Writing-process spine                         |★★★|—  |—  |★ |
|Audience analysis                             |★★★|★  |★★ |— |
|Methods of development (organization patterns)|★★★|—  |★  |— |
|Style mechanics (clarity, conciseness, tone)  |★★★|—  |—  |★ |
|Ethics in writing                             |★★★|—  |—  |— |
|Instructions / procedural writing             |★★★|★★ |—  |— |
|Persuasion                                    |★★ |—  |—  |★ |
|Global / cross-cultural                       |★★ |—  |★  |— |
|Document-type catalog                         |★  |★★★|—  |— |
|IT-audience empirical data                    |—  |—  |★★★|— |
|Writer's-block tactics, paragraph craft       |★  |—  |—  |★★|
|Document types (commercial vs military)       |—  |★★★|—  |— |

Operational reading: **A is the spine, P is the taxonomy, N is the audience data, S is the courseware shape.** Treat A as authoritative when sources conflict.

-----

## 2. The core spine: Five Steps to Successful Writing [A]

Alred organizes the entire handbook around this five-step process. Every other entry hangs off one of these phases. The Checklist of the Writing Process (§7 below) maps the steps to specific sub-tasks.

```
Preparation → Research → Organization → Writing → Revision
```

- **Preparation:** establish purpose, audience, scope, context, medium. *Before* you write.
- **Research:** primary (interviews, observation, surveys, experiments) and secondary (books, articles, reports, Web). Adequate research = the only way to write about something complex with authority.
- **Organization:** choose a method of development, outline, decide on layout/visuals.
- **Writing:** convert outline to draft. Don't worry about polish. Write the intro last; it's easier once you know what's in the body.
- **Revision:** different mindset from drafting. Read as a first-time reader. Pass for big issues (unity, coherence, accuracy, completeness) before mechanical issues (spelling, punctuation). Mechanical = proofreading, a sub-step of revision.

**Key insight to encode in the skill:** revision is multi-pass and the passes have an order. Big-to-small. Don't proofread until structure and content are settled.

-----

## 3. Preparation: the five pre-writing decisions [A]

### 3a. Purpose

Every document has a primary purpose: to inform, instruct, persuade, or report. The writer's question: *what should the reader know, believe, do, or be able to do after reading this?* If you cannot fill that sentence in, you don't have a document yet — you have a topic.

Workplace writing often blends purposes (a proposal informs + persuades + describes). Name the primary purpose; subordinate the rest to it.

### 3b. Audience / Readers

Alred's audience analysis questions, verbatim:

- Who specifically is your reader? Multiple readers? Who needs to see or use the document?
- What do your readers already know about the subject? What's their attitude (skeptical, supportive, anxious, bored)?
- What particular information about your readers (experience, training, work habits) might help you write at the appropriate level of detail?
- What does the context suggest about meeting reader expectations for content or layout?
- Do you need to adapt for international readers?

**For mixed audiences:** segment the document. Executive summary for managers. Body for decision-makers. Appendix with detailed data for specialists. If you can't segment, prioritize the primary reader (the one making the decision) without sacrificing the secondary reader.

### 3c. Scope

The depth and breadth of coverage. Bounded by purpose and audience. Scope creep in technical docs comes from over-explaining for the secondary reader at the cost of the primary.

### 3d. Context

The environment around the document — circumstances inside and outside the organization that shape how the reader will interpret it. Alred's context questions, verbatim:

- What is your professional relationship with readers, and how does that affect tone, style, scope?
- What's "the story" behind the immediate reason you're writing? What events or prior documents led here?
- What's the preferred medium of your readers?
- What specific factors (competition, finance, regulation) are recognized in the organization as important?
- What's the corporate culture? What are the key values in the mission statement?
- What are the professional relationships among the specific readers?
- What current events inside or outside the organization may influence interpretation?
- What national cultural differences might affect interpretation?

**Signal the context inside the document.** A cover sentence — "During our meeting on improving quality last week, you mentioned…" — orients the reader. Always provide context with an email attachment. Don't make the reader reconstruct why this landed in their inbox.

### 3e. Medium

Selecting the medium is itself a decision, not a default. Email, IM, formal report, memo, intranet doc, voice — each has comparative advantages. A frequently-revised document accessed by many employees → intranet, not email attachment. A proposal needing inline review → editable file with comments, not paper.

-----

## 4. Research [A]

- **Primary:** interviews, direct observation, surveys, experiments, questionnaires, audio/video recordings. The only way to obtain certain kinds of information (animal behavior, mechanical operation, system behavior).
- **Secondary:** books, articles, reports, Web documents, e-mail discussions, brochures.

For collaborative projects, distribute research tasks across team members. Match the depth of research to scope.

-----

## 5. Organization: the nine methods of development [A]

The single most useful framework in Alred. The method of development is the writer's tool for keeping information under control and the reader's means of following the presentation. Choose the method that fits the subject, audience, and purpose. Most documents blend methods; rarely is one enough.

|Method                                       |When to use                                                                                                  |Typical document                                                |
|---------------------------------------------|-------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|**Sequential**                               |Steps in a process where order matters and reader will *perform* the steps                                   |Instructions, procedures, assembly guides                       |
|**Chronological**                            |Events in time order, where time is the organizing axis                                                      |Trip reports, lab reports, accident reports, narrative histories|
|**Spatial**                                  |Physical objects/locations described as one would visually traverse them                                     |Equipment descriptions, site layouts                            |
|**Division-and-Classification**              |Breaking a complex topic into parts (division) or sorting items into categories (classification)             |Taxonomies, system overviews                                    |
|**Comparison**                               |Two or more items measured against the same criteria                                                         |Trade studies, vendor evaluations, options analyses             |
|**Cause-and-Effect**                         |Demonstrating *why* something happened or will happen                                                        |Root-cause analyses, risk assessments, failure analyses         |
|**Definition**                               |Establishing what a term means before using it (formal: term + class + differentiating feature)              |Glossaries, conceptual sections of specs                        |
|**Order-of-Importance**                      |Ranked points, either decreasing (lead with most important) or increasing (build to the strongest)           |Executive memos (decreasing), persuasive writing (increasing)   |
|**General-to-Specific / Specific-to-General**|Teach unfamiliar topic (general → specific) or persuade skeptics (specific → general, building to conclusion)|Tutorials, persuasive briefs                                    |

**Comparison sub-patterns:**

- **Whole-by-whole:** all characteristics of item A, then all of item B. Good when reader needs to understand each item as a unit.
- **Part-by-part:** feature 1 across A and B, then feature 2 across A and B. Good when reader needs to compare on specific criteria. Tables are the densest part-by-part form.

**Order-of-importance sub-patterns:**

- **Decreasing order:** lead with most important. Best for busy decision-makers who may stop reading after the first point. Default for executive memos.
- **Increasing order:** build to the strongest point. Best when you need the reader to follow a chain to a conclusion they wouldn't accept up front. Better for oral presentations than written documents (in writing, the reader can lose patience).

**Operational rule:** name the method of development in your outline. If you can't name it, you don't have one, and the draft will wander.

-----

## 6. Outlining [A]

An outline is the skeleton: main topics and subtopics arranged by the chosen method of development.

**Why outline:**

- Breaks large subjects into manageable parts
- Acts as a road map — keeps you moving logically
- Parts move easily, so you can test arrangements
- Frees you from organization concerns during drafting
- Surfaces logic errors *before* they're embedded in prose
- Critical for collaborative writing — divides responsibilities, maintains shared focus

**Two types:**

- **Topic outline:** short phrases. Good for short docs (emails, memos, letters).
- **Sentence outline:** complete sentence per point — each sentence is a candidate topic sentence for a paragraph in the draft. Used for large projects, typically after a topic outline has set the structure.

**Method:** group related notes by major divisions (Roman numerals) → arrange by chosen method of development → establish minor divisions (capital letters) → add sub-levels as needed.

-----

## 7. The Checklist of the Writing Process [A, verbatim structure]

A consolidated working checklist, mapped to the five steps. Use as both a forward checklist and a backward diagnostic when something feels wrong in a draft.

**Preparation**

- Establish your purpose
- Identify your audience or readers
- Consider the context
- Determine your scope of coverage
- Select the medium

**Research**

- Conduct research
- Take notes
- Interview for information
- Create and use questionnaires
- Avoid plagiarism
- Document sources

**Organization**

- Choose the best methods of development
- Outline your notes and ideas
- Develop and integrate visuals
- Consider layout and design

**Writing a Draft**

- Use quotations and paraphrasing
- Write an introduction (last, ideally)
- Write a conclusion
- Choose a title

**Revision**

- Check for unity and coherence
- Adopt an appropriate style and tone (incl. conciseness, pace)
- Construct effective paragraphs (transition, sentence variety, emphasis, parallel structure, subordination)
- Check for clarity (ambiguity, awkwardness, logic errors, positive writing, voice)
- Check for appropriate word choice (abstract/concrete, affectation, jargon, clichés, connotation/denotation, defining terms)
- Eliminate problems with grammar (agreement, case, modifiers, pronoun reference, sentence faults)
- Review mechanics (punctuation, abbreviations, capitalization, contractions, dates, italics, numbers, spelling)
- Check for ethics in writing

**Diagnostic use:** if a paragraph feels off, walk down this list from "unity and coherence" downward and find the first item that fails. Don't fix mechanics if structure is broken.

-----

## 8. Style mechanics [A, S]

### 8a. Clarity [A]

Clarity is *enabled by* method of development, outline, transition, emphasis, subordination, pace, and word choice. It is a property of the whole, not just sentences. Most clarity failures trace upstream — to weak organization, not poor word choice.

### 8b. Conciseness [A] — Writer's Checklist (verbatim)

Wordiness is acceptable in a draft. It should not survive revision.

- **Use subordination to achieve conciseness.** "The financial report was carefully documented, and it covered five pages." → "The carefully documented financial report covered five pages."
- **Avoid affectation by using simple words and phrases.** ("It is the policy of the company to provide…" → "Employee Internet access should be used only for…")
- **Eliminate redundancy.** ("Postinstallation testing, which is offered to all our customers at no further cost to them whatsoever…" → "Free postinstallation testing is offered with each…")
- **Change passive to active and indicative to imperative whenever possible.**
- **Eliminate or replace wordy introductory phrases.** Standard swap table:

|Replace                                                          |With          |
|-----------------------------------------------------------------|--------------|
|in order to, with a view to                                      |to            |
|due to the fact that, for the reason that, owing to the fact that|because       |
|by means of, by using, in connection with, through the use of    |by, with      |
|at this time, at this point in time, at present                  |now, currently|
|being as, being that                                             |because, since|
|inasmuch as, insofar as                                          |since, because|
|on account of                                                    |because       |

- **Do not overuse intensifiers** — *very, more, most, best, quite, great, really, especially.* Replace with specific details.
- **Beware modifiers that repeat the modified word.** *basic essentials, final outcome, completely finished, present status, perfectly clear, completely accurate.*
- **Beware coordinated synonyms.** *each and every, basic and fundamental, first and foremost, finally and for good.*
- **Beware circumlocution.** A long, indirect way of expressing things. The wordy/concise contrast: "The payment to which a subcontractor is entitled should be made promptly so that in the event of a subsequent contractual dispute we, as general contractors, may not be held in default of our contract by virtue of nonpayment" → "Pay subcontractors promptly. Then, if a contractual dispute occurs, we cannot be held in default of our contract because of nonpayment."

**Caveat:** conciseness has a floor. Too far and you get telegraphic style and ambiguity — especially in correspondence. Brevity ≠ conciseness; a long report can be concise; a short abstract can be wordy.

### 8c. Technical writing style [A]

Imperative mood + active voice + present tense is the default for instructions and procedures. Default for analytical writing: indicative mood, active voice, simple tenses. Contractions are appropriate in correspondence; generally not in reports and proposals.

Consistency in terminology > variety. Repeating a term is better than synonym-shopping, because synonyms cue the reader to look for a difference in meaning. ("Several recent analyses… these studies… the reports" — three terms for one thing is worse than just "studies" three times.)

### 8d. Tone [A]

Tone is the writer's attitude toward subject and reader, made visible through word choice. Tone defaults: professional, direct, respectful. Use the "you" viewpoint where appropriate — reader-facing rather than writer-facing.

### 8e. Positive writing [A]

State what *is* rather than what is *not*, where you can do so without inaccuracy. Positive constructions are typically shorter and easier to process. Negative constructions remain appropriate for warnings and prohibitions.

### 8f. Plain-language defaults [A, S]

- Short common words by default
- Save the syllables for technical terms that earn them
- Define non-standard terms; explain principles you take for granted as a specialist
- "Use," not "utilize." "Start," not "commence." Etc.
- Active voice, except when the agent is genuinely unknown or beside the point

> Overlaps the `technical-blog-writer` skill's `writing-rules.md`. The fundamentals are shared; the *register* differs (formal default here; smart-colleague default there). When working on a document, this file's register wins.

### 8g. Paragraph craft [A, S]

- One topic sentence per paragraph; every other sentence develops that core idea (unity)
- Hold to one point of view, one tense, one attitude (coherence)
- Transition signals between sentences and paragraphs: "specifically," "in addition," "however," "although," and explicit enumeration ("first… next… finally")
- Avoid one-sentence paragraphs in long-form work; avoid wall-of-text paragraphs that bury the topic sentence

### 8h. Writer's block tactics [S]

When you can't start: freewrite. Write anything on the topic without revising. The act of generating words breaks the block; what's generated may not survive but its successor sentence will. Pair with: skip the introduction, start in the body, write the intro after the draft is done [A].

### 8i. Strong openings and closings [S]

What the reader sees first and last gets disproportionate weight in retention. Make the opening do real work — state the purpose, frame the context, name the stakes. Make the closing do real work — make a recommendation, summarize key findings, name the action requested. "Many presenters make the mistake of not actually closing — they simply quit talking" [A, persuasion entry].

-----

## 9. Ethics in writing [A] — Writer's Checklist (verbatim)

Six questions to apply during revision:

1. Am I willing to take responsibility, publicly and privately, for what I have written?
1. Is the document or message honest and truthful? Do the data support the findings and conclusions?
1. Am I acting in my employer's, client's, public's, or own best long-term interest?
1. Does the document or message violate anyone's rights? (Confidential information? Legal review needed?)
1. Am I ethically consistent in my writing?
1. What if everybody acted or communicated in this way? Would I, as the intended reader, find this acceptable and respectful?

**Specific ethical lapses Alred names:**

- Passive voice used to evade responsibility ("It has been decided") — usually the *who* should be named
- Deceptive language: words with multiple meanings used to mislead ("a nominal charge" used to mean both "named amount" and "very small")
- De-emphasizing or suppressing material the reader would want — safety hazards, hidden costs, unfavorable terms buried in dense paragraphs with small type
- Self-serving partial information: highlighting a feature available only with some models without flagging the limitation
- Biased, racist, sexist, or stereotyping language
- Plagiarism and copyright violation — both unethical and consequential

-----

## 10. Persuasion [A]

Persuasive writing wants the reader to adopt a view or take an action. Three workplace flavors: reinforce existing beliefs, change current beliefs, advocate for a specific proposal.

**Three rules from Alred:**

1. Support the appeal with logic and a sound presentation of facts, statistics, and examples. Persuasion without evidence is exhortation.
1. The reader's impression of the document's *appearance* contributes to its persuasiveness. Layout and design earn or lose credibility.
1. Acknowledge real or potentially conflicting opinions. This anticipates objections, builds credibility, and lets you respond on your own terms.

Avoid ambiguity. Don't wander from the main point. Never make false claims.

The "you" viewpoint is a persuasion technique: focus on the reader's interest and perspective rather than the writer's.

> Note: the `technical-blog-writer` skill covers a sharper persuasive register (stakes ledger, named loser/winner). For workplace proposals, regulatory submissions, and similar formal-register persuasion, use these rules; don't import the blog-writer's pointing discipline into a document the reader will treat as institutional.

-----

## 11. Global communication [A]

Hall's "contexting" framework, summarized:

- **Low-context cultures:** assume little shared knowledge. Communicate in detail. Thorough documentation expected; written agreements (contracts) matter; rules are explicitly defined.
- **High-context cultures:** assume context is shared. Lean on shared history and relationships. Written contracts matter less; the relationship matters more.

No culture is purely one or the other. The framework helps the writer calibrate level of explicitness for the target audience.

**Operational checklist for global communication:**

- Acknowledge cultural diversity within your own organization first
- Consult someone from the target audience's culture for phrases, gestures, and visuals that subtly land differently
- Watch for visual elements that don't translate — red cross (medical in North America; Christian in Muslim regions), gestures (finger below the eye = caution in Honduras; "you can't fool me" in France), depictions of people (acceptable in U.S.; offensive in many cultures)
- Use ISO-standardized symbols where possible
- Avoid euphemisms in international correspondence (their meanings often don't carry)

-----

## 12. Instructions [A] — operational rules

Instructions are the document type most reliant on doing the procedure yourself first. *You cannot write instructions you can't perform.* If you can't observe or perform the steps, you'll miss the implicit knowledge that makes the difference between a working set of instructions and a frustrating one.

**Mechanics, verbatim from Alred:**

- Imperative mood, active voice, present tense. "Raise the access lid." Not "The access lid will be raised by the operator."
- Conciseness yields to clarity. Dropping articles and pronouns can produce telegraphic, harder-to-understand sentences. ("Place document in tray with printed side facing opposite" → "Place the document in the document tray with the printed side facing away from you.")
- Short, simple steps in proper sequence. Number them.
- Plan ahead for the reader. If step 2 will affect step 9, say so in step 2.
- For simultaneous operations, either state the simultaneity in an intro or combine them in one step. ("Hold down CONTROL. Press RETURN before releasing CONTROL." → "While holding down CONTROL, press RETURN.")
- For many-step procedures, break into stages with headings, each starting again at step 1.
- Use the numbered- or bulleted-list features of word processing; they handle renumbering when you edit.

**Warnings:**

- Alert the reader to hazardous materials or actions *before* they reach the step needing them — not at the moment of, or after, the danger.
- Highlight warnings visually: box, all-caps, larger font, color. Distinct from the surrounding text. Pair a drawing with the warning when relevant.

**Illustrations:**

- Develop illustrations alongside the text, not as a decorative afterthought
- For products sold internationally, consider using only visuals where possible; see global graphics for culture-neutral icons

-----

## 13. IT-audience empirical findings [N]

Survey of 100 IT students at Nueva Ecija University of Science and Technology (Atate Campus), 2024. Use as audience-calibration data for technical documentation aimed at IT learners and entry-level practitioners — *not* for senior specialists, who have a different signal profile.

**Top barriers IT readers report:**

|Barrier                               |% citing|
|--------------------------------------|--------|
|Complex sentence structures           |46%     |
|Lack of examples                      |46%     |
|Jargon / technical terms (unexplained)|43%     |
|Lack of visuals                       |43%     |
|Poor organization                     |35%     |

**Top requested practices (effectiveness):**

|Practice                      |% citing as most effective|
|------------------------------|--------------------------|
|Step-by-step instructions     |66%                       |
|Examples                      |62%                       |
|Visuals                       |>50%                      |
|Definitions and plain language|substantial minority      |

**Same practices, agreement-with-inclusion:**

|Practice                    |% agreeing it should be included|
|----------------------------|--------------------------------|
|Step-by-step instructions   |96%                             |
|Visuals                     |93%                             |
|Examples                    |92%                             |
|User testing of the document|96%                             |
|Defining key terms          |90% disagreed                   |

**Note on the "defining key terms" anomaly:** 90% of respondents *disagreed* with the idea that technical writers should define key terms. Interpretation: the audience expects definitions only where genuinely needed, not as a default ceremony at the top of every section. Pairs with Alred's "consistency in terminology over synonym variety." Define terms that would otherwise block comprehension; don't define what the audience already knows.

**Audience-considered factors when calibrating documentation:**

|Factor             |% citing as critical|
|-------------------|--------------------|
|Technical expertise|65%                 |
|Job role           |substantial         |
|Education level    |substantial         |
|Cultural background|substantial         |
|Age                |minor but present   |

**Writing style preferences:**

|Style      |% preferring|
|-----------|------------|
|Formal     |67%         |
|Informal   |33%         |
|Semi-formal|minimal     |

**Document-structure preferences:**

|Structure       |% finding most helpful|
|----------------|----------------------|
|Problem-solution|46%                   |
|Chronological   |44%                   |
|Topical         |37%                   |

**Operational implications for an IT-targeted technical-writer skill:**

- Default to step-by-step structure for procedural content. Don't dilute with prose-only paragraphs.
- Examples are not optional. Every non-trivial concept earns at least one example.
- Visuals are not optional for non-trivial procedures and architectures. Plan them during outlining.
- Default to formal register. Reserve informal register for blog/essay (which has a separate skill).
- Use problem-solution or chronological structure by default; topical structure is for reference material that's not meant to be read linearly.
- Don't over-define. Define terms when they'd otherwise block comprehension. Trust the audience on what they already know.
- Test the document with a representative reader before shipping. 96% endorsement is the strongest signal in the survey.

-----

## 14. The SkillPath workshop spine [S]

Three-session structure usable as a teach-the-skill outline:

- **Session 1: Key Concepts.** Six steps to writing technical communication that's easily understood. Formatting that makes writing visually easier to read. Graphics that simplify technical information. The power of persuasion. Common technical-writing errors.
- **Session 2: Getting Writing Off to a Good Start.** Overcoming writer's block through freewriting. Breaking topics into smaller parts for impact. Strong opening and closing paragraphs. Expert tips that make technical writing easier. Logically structuring paragraphs for readability.
- **Session 3: Projecting Credibility and Professionalism.** Eliminating unnecessary words and redundant phrases. Removing unintentional bias. Structuring sentences with reader focus. Avoiding credibility-killing errors.

The workshop signals a useful three-phase organization for a teaching skill: *concepts → drafting → polish/credibility*. This is compatible with Alred's five steps but reorganizes the same material around skill-acquisition sequence rather than process sequence.

-----

## 15. Document-type catalog from Practices Vol. 1 [P]

The Society for Technical Communication's 1971 taxonomy of practitioner-recognized document types. Even where the conventions are dated, the *types* are durable. Use as a coverage map for what a technical-writer skill should know how to produce.

**Part I — Documents and publications:**

|Document type                                                      |Notes                                                |
|-------------------------------------------------------------------|-----------------------------------------------------|
|Equipment Instruction Manuals — Commercial                         |User-facing operating documentation                  |
|Equipment Instruction Manuals — Military and Government            |Heavily standardized; MIL-STD lineage                |
|Instructional and Procedural Publications — Commercial             |Procedures, work instructions, SOPs                  |
|Instructional and Procedural Publications — Military and Government|Procedures, work instructions, MIL-spec              |
|Parts Catalogs — Military and Commercial                           |Parts identification, replacement, ordering          |
|Technical Reports                                                  |Engineering, R&D, test reports                       |
|Management Reports                                                 |Status, progress, executive-facing analytical reports|
|Technical Papers, Articles, and News Releases                      |External-facing technical communication              |
|Technical Correspondence                                           |Workplace email, memos, letters, inquiries           |
|Engineering Proposals                                              |RFP responses, internal proposals, grant proposals   |
|Technical Sales Literature                                         |Brochures, datasheets, white papers                  |
|Presentation, Audiovisual, and Staging Techniques                  |Slide decks, technical talks, demos                  |
|Industrial Advertising                                             |Trade-press advertising, lead generation             |
|Technical and Industrial Films                                     |Video and motion-picture documentation               |

**Part II (Vol. 2) — Activities and services supporting technical writing.** Not in scope here; cited for completeness.

**The framework's main contribution:** the **commercial vs military/government distinction.** Conventions, standardization, level of formality, level of prescription, and document inheritance differ between the two. For medical-device or aerospace work, the regulated-document conventions (FDA, IEC, MIL-STD, etc.) line up more with the military/government tradition. For internal docs and product UX, the commercial tradition.

The handbook's overall goal — standardization — is itself a useful operational principle: *consistency across the field reduces reader cost.* House style guides exist for this reason.

-----

## 16. The cross-source synthesis (what to encode)

Every source converges on a small set of operational truths. These are the skill's high-confidence rules:

1. **Pre-writing analysis precedes drafting.** Purpose, audience, scope, context, medium — name them on paper before you start. [A] [N] [S]
1. **Method of development comes before outline; outline comes before draft.** Skipping either step shows in the draft. [A]
1. **Match structure to content type.** Procedures → sequential. Events → chronological. Trade studies → comparison. Decisions for busy readers → decreasing order-of-importance. Persuasion of skeptics → increasing order-of-importance or specific-to-general. [A] [N]
1. **For procedures: imperative mood + active voice + present tense.** Numbered steps. Warnings *before* the affected step, visually distinct. [A]
1. **Plain language is the default register; technical terms earn their place.** [A] [N] [S]
1. **Examples and visuals are not decorative.** They are first-class structural elements. Plan them during outlining, not after drafting. [A] [N]
1. **Consistency in terminology > synonym variety.** Repeating a word cues "same thing"; synonyming cues "look for a difference." [A]
1. **Revision is multi-pass and ordered: structure → style → mechanics.** Don't proofread until structure and content are settled. [A]
1. **Test the document with a real reader before shipping.** Usability testing is endorsed by ~96% of surveyed IT readers and is a recurring theme in Alred. [A] [N]
1. **Ethics applies during revision.** Six questions on responsibility, honesty, interest, rights, consistency, and the categorical imperative. [A]
1. **Persuasion = evidence + acknowledgment of opposing views + clean layout.** Persuasion without evidence is exhortation. [A]
1. **Global audiences need calibration on both language and visuals.** Hall's high/low-context spectrum; ISO symbols where culture-specific connotations exist. [A]

-----

## 17. Inputs and outputs for a skill built on this distillation

### What the skill takes as input

- **Document type** (from §15's catalog): instructions, procedure, report, proposal, spec, sales literature, etc.
- **Purpose** (inform / instruct / persuade / report — usually a primary and one or two secondaries)
- **Primary audience** + **secondary audience(s)**, with technical-expertise level for each
- **Scope** (what's in, what's out)
- **Context** (the organizational story behind why this document exists)
- **Medium** (where and how the document will be read)
- **Source material** (the research base — interviews, observations, prior docs, regulations, code, measurements)
- *(optional)* **House style guide** or governing standard (e.g., Microsoft Manual of Style, IEEE, FDA guidance, IEC 62443, internal style)

### What the skill produces

- **Method-of-development declaration** (named explicitly)
- **Outline** (topic outline for short docs; sentence outline for long-form, especially proposals, formal reports, manuals)
- **Draft** organized to the outline, written in the appropriate style for the document type and audience
- **Revision pass** against the Checklist of the Writing Process (§7)
- **Ethics pass** against the six questions (§9)
- *(optional)* **User test plan** — a list of comprehension questions a representative reader should be able to answer after reading

### Recommended skill workflow

```
Phase 1 — Preparation (do not skip; name each on paper)
  1. Purpose statement
  2. Audience profile(s) — primary, secondary, with expertise level
  3. Scope boundary
  4. Context statement
  5. Medium selection
  6. House style / standards check

Phase 2 — Research
  7. Primary research where required (observe, interview, measure)
  8. Secondary research (prior docs, regs, references)
  9. Note-taking and source documentation

Phase 3 — Organization
  10. Method-of-development declaration
  11. Outline (topic or sentence per doc length)
  12. Visual plan (which figures, where, who produces them)
  13. Layout decisions (headings, lists, callouts)

Phase 4 — Drafting
  14. Body first, intro last
  15. Imperative + active + present for procedural sections; indicative + active + simple tenses elsewhere
  16. One topic sentence per paragraph; consistent terminology; transition signals
  17. Examples and visuals where the audience needs them (default-on for non-trivial content)

Phase 5 — Revision (in order, do not interleave)
  18. Unity and coherence — does each paragraph hold one idea?
  19. Method-of-development fidelity — did the draft hold the structure?
  20. Audience fit — defined terms where needed, no unexplained jargon for the declared level
  21. Style — conciseness pass with the wordy-phrase swap table; active voice; positive constructions
  22. Mechanics — punctuation, grammar, spelling (proofreading)
  23. Ethics — the six-question pass
  24. Global communication — review for culture-bound language and visuals if applicable

Phase 6 — Validation
  25. User test with a representative reader
  26. Comprehension questions answered correctly?
  27. Any reader-flagged ambiguity → revise the affected section
```

-----

## 18. Boundary against the existing technical-blog-writer skill

The four sources distilled here are about **technical documentation and workplace deliverables** — manuals, procedures, reports, specs, proposals, instructions, correspondence. The existing `technical-blog-writer` skill covers **long-form argument and exposition** — blog posts, deep dives, vulnerability writeups, opinion, essay.

Both share:

- Plain-language defaults
- Audience-first analysis
- Evidence-backed claims
- The discipline of paragraph unity and consistent terminology
- A multi-pass revision workflow

They diverge on:

|Dimension           |technical-blog-writer                    |technical documentation (this file)                             |
|--------------------|-----------------------------------------|----------------------------------------------------------------|
|Primary content type|Argument, narrative, exposition          |Procedural, descriptive, reference, formal report               |
|Voice               |Opinionated practitioner                 |Neutral, professional                                           |
|Tone                |Sharp where evidence backs it            |Measured, default formal                                        |
|Stakes ledger       |Required (Pass 0.5)                      |Not applicable                                                  |
|Anti-pattern catalog|Heavy (writing-rules, anti-patterns refs)|Lighter; mostly conciseness + ethics                            |
|Default structure   |Diátaxis types + opinion + essay         |Alred's nine methods of development                             |
|Front matter        |SEO-aware; platform-specific             |House-style / regulatory-template aware                         |
|Length norms        |800–5,000+ words                         |Whatever the document type requires                             |
|Reader-level system |101 / 201 / 301                          |Primary-audience expertise + segmentation                       |
|Pipeline thinking   |Blog → newsletter → talk → book chapter  |Doc → revision → user test → release; updates over the lifecycle|

A document like a *vulnerability writeup* sits closer to `technical-blog-writer`. A document like a *threat model report*, *Polarion-traceable requirements doc*, *DICOM C-SCARE README*, *security architecture review*, or *FDA premarket cybersecurity submission* sits in the territory this file covers.

The two skills should compose: blog-writer borrows nothing from this for argument/voice; this borrows nothing from blog-writer for procedure/spec. The shared layer (plain language, audience analysis, paragraph craft) can either live in both skills or be factored into a shared `references/writing-fundamentals.md` if you want to deduplicate later.

-----

## 19. What this distillation deliberately omits

- **A's complete A-Z usage entries.** Word-by-word usage guidance (effect vs. affect, who vs. whom, etc.) is reference material, not skill-shaping methodology. A house style guide or external usage reference (Chicago, Microsoft, AP) covers this better than a skill.
- **A's full grammar and ESL coverage.** Same reason — reference, not methodology.
- **P's military-document formats.** MIL-STD-specific conventions (e.g., MIL-DTL-31000, MIL-STD-40051) have evolved past the 1971 source; consult current standards.
- **P's Vol. 2.** Out of scope for this pass; covers supporting activities (editing, illustrations, production) rather than the writing itself. Worth revisiting if the skill grows into a production-pipeline scope.
- **S's marketing copy.** The brochure's session blurbs and bullet points are too thin to extract more than the three-phase teaching structure.
- **N's literature-review padding.** The paper cites many secondary sources but adds little methodology beyond its own survey. The survey data is the contribution; the lit review is recycled Strunk/White/Williams/Pinker.

-----

## Appendix A — One-page operational cheat sheet

**Before writing:**

1. Purpose. Audience. Scope. Context. Medium. *Write each down.*
1. Pick a method of development. Name it.
1. Outline.

**While writing:**
4. Body first, intro last.
5. Procedures: imperative + active + present, numbered.
6. Plain language; consistent terms; examples and visuals where they help.
7. Warnings *before* the step.

**After writing (in order):**
8. Unity & coherence (paragraphs).
9. Structure fidelity (did you hold the method?).
10. Style: conciseness, active voice, positive constructions.
11. Mechanics: punctuation, grammar, spelling.
12. Ethics: six questions.
13. Global communication if applicable.
14. User test.

If a paragraph feels off, walk this list top-down and fix the first thing that fails. Don't fix mechanics until structure is settled.
