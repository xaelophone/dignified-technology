---
name: dignified-technology
description: Evaluates whether a product follows Dignified Technology principles from "What Does a Tool Owe You?" — scores six dimensions of human dignity (authorship, creative range, voice, process involvement, depth, input agency) with letter grades. Use when auditing a product, reviewing AI integration design, or assessing whether a tool respects human dignity.
---

<objective>
Conduct a Dignified Technology audit of the current project. This skill reads the codebase to form a preliminary diagnosis, then conducts a targeted interview to fill gaps, and produces a letter-grade scorecard evaluating six principles of dignified technology.

The core question: **does this tool owe its users their own capability back, amplified — or does it take something from them in exchange?**

This is a diagnosis-first hybrid approach. The skill gathers as much evidence as possible from code before asking any questions, making the interview shorter and more focused.
</objective>

<required_reading>
**Read these reference files before proceeding:**
1. [references/essay-principles.md](references/essay-principles.md) — The 6 principles with full context
2. [references/scoring-rubric.md](references/scoring-rubric.md) — A-F grade definitions per principle
3. [references/values-as-spec-guide.md](references/values-as-spec-guide.md) — Values-as-Spec assessment guide
4. [templates/scorecard.md](templates/scorecard.md) — Output template for the final report
</required_reading>

<quick_start>
Run `/dignified-technology` in any project directory. The skill will:

1. **Diagnose** — Read your codebase (CLAUDE.md, README, source code, docs) to form preliminary assessments
2. **Interview** — Ask targeted questions only about gaps the diagnosis couldn't resolve
3. **Assess values** — Ask three Values-as-Spec questions (always asked, requires human intent)
4. **Score** — Produce a letter-grade scorecard with per-principle grades and recommendations
</quick_start>

<process>

<phase number="1" name="Codebase Diagnosis">
**Goal**: Form preliminary per-principle assessments from code evidence before asking any questions.

Read the following files and sources (skip any that don't exist):

1. **CLAUDE.md** — Product description, architecture, design philosophy
2. **README.md** — Product overview, stated purpose, user-facing description
3. **PRDs, design docs, or values statements** — Search for files matching: `**/PRD*`, `**/prd*`, `**/design-doc*`, `**/values*`, `**/principles*`, `**/ARCHITECTURE*`
4. **AI integration points** — Search source code for:
   - AI/LLM API calls (anthropic, openai, ai, llm, completion, chat, generate, prompt)
   - Streaming endpoints (SSE, stream, EventSource)
   - AI-related route handlers
5. **User-facing flows** — Examine UI components, pages, and user interactions to understand:
   - How AI output is presented to users
   - What controls users have over AI behavior
   - Whether the user is involved in the creation process or receives finished output
6. **Notification and suggestion patterns** — Search for unsolicited AI behavior, auto-complete, auto-suggest, notifications

For each of the 6 principles, record:
- **Tentative grade** (based on code evidence alone)
- **Evidence found** (specific files, patterns, design decisions)
- **Gaps** (what you couldn't determine from code — these become interview questions)

**Present the diagnosis to the user** as a summary table:

```
Based on reading your codebase, here's my preliminary assessment:

| Principle | Tentative Grade | Evidence | Gaps |
|-----------|----------------|----------|------|
| Authorship Preservation | [grade] | [what was found] | [what's unclear] |
| Creative Range | [grade] | [what was found] | [what's unclear] |
| Voice Amplification | [grade] | [what was found] | [what's unclear] |
| Process Involvement | [grade] | [what was found] | [what's unclear] |
| Depth of Exploration | [grade] | [what was found] | [what's unclear] |
| Input Agency | [grade] | [what was found] | [what's unclear] |

I need to ask you some questions to fill the gaps before finalizing grades.
```
</phase>

<phase number="2" name="Targeted Interview">
**Goal**: Fill gaps identified in Phase 1 with targeted questions. Do NOT ask about things the diagnosis already resolved.

**Rules for this phase:**
- Only ask about gaps from Phase 1 — if the code clearly answers a question, don't re-ask it
- Frame questions based on what was found: "I saw that your AI generates drafts in `routes/writing.ts`. Can you tell me about the intent behind that design? Is the user expected to rewrite the draft substantially, or is it meant as near-final output?"
- Group related questions when possible to reduce interview length
- Maximum 6 questions total (one per principle gap, though some principles may have no gaps)

Use `AskUserQuestion` for each question or group of questions. Provide context about what you found so the engineer understands why you're asking.

**If the diagnosis found clear evidence for all principles**, skip this phase entirely and proceed to Phase 3. Tell the user: "The codebase provided clear evidence for all six principles. Proceeding directly to the Values-as-Spec assessment."
</phase>

<phase number="3" name="Values-as-Spec Assessment">
**Goal**: Assess whether the product team has embedded values in their product specification. These questions are ALWAYS asked because they require human intent.

Refer to [references/values-as-spec-guide.md](references/values-as-spec-guide.md) for detailed guidance on what good answers look like and what gaps to flag.

Ask these three questions using `AskUserQuestion` (can be asked together or sequentially):

1. **Values protected**: "What values is your product committed to protecting? Not aspirational values — values that have directly shaped a design decision you've made."

2. **User involvement**: "How does your product involve the user in its processes? Walk me through where the human is in the loop, and where they aren't."

3. **Automation boundaries**: "What does your product explicitly refuse to automate? Not what it can't do — what it *won't* do, by design choice?"

Evaluate each answer against the guidance in values-as-spec-guide.md. Determine whether Values-as-Spec is **Present**, **Partial**, or **Absent**.
</phase>

<phase number="4" name="Scorecard Generation">
**Goal**: Combine all evidence and produce the final scorecard.

1. **Finalize grades**: For each principle, combine diagnosis evidence with interview answers. Refer to [references/scoring-rubric.md](references/scoring-rubric.md) for grade definitions. The final grade may differ from the preliminary assessment — interview answers may raise or lower a grade.

2. **Calculate overall grade**:
   - A=4, B=3, C=2, D=1, F=0
   - Average all 6 principle scores
   - Map: 3.5-4.0=A, 2.5-3.49=B, 1.5-2.49=C, 0.5-1.49=D, 0-0.49=F
   - **Critical rule**: An F on any principle caps overall at D

3. **Generate the scorecard** using the template at [templates/scorecard.md](templates/scorecard.md):
   - Fill in all principle grades with one-line rationales
   - Write detailed findings for each principle citing specific code/design evidence
   - Include the Values-as-Spec assessment outcome
   - Write top 3 recommendations ordered by impact

4. **Present the scorecard** to the user. Ask if they want the scorecard saved as a markdown file in their project.
</phase>

</process>

<anti_patterns>
- **Generic interview**: Asking the same questions regardless of what the code reveals. The diagnosis exists to make the interview targeted.
- **Aspirational grading**: Giving credit for stated intent without evidence in the product. Grade the product as built, not as hoped.
- **Inflated grades**: When evidence is ambiguous, lean toward the lower grade. It's better to challenge improvement than to give unearned credit.
- **Skipping diagnosis**: Jumping straight to the interview without reading the codebase. The diagnosis is the foundation.
- **Ignoring the F-cap rule**: An F on any principle must cap the overall grade at D.
</anti_patterns>

<success_criteria>
The audit is complete when:
- [ ] Codebase was read and preliminary assessments formed for all 6 principles
- [ ] Diagnosis summary was presented to the user
- [ ] Targeted interview addressed all gaps (or was skipped because diagnosis was sufficient)
- [ ] All three Values-as-Spec questions were asked and evaluated
- [ ] Final grades were assigned using the scoring rubric
- [ ] Overall Dignity Grade was calculated (with F-cap rule applied if needed)
- [ ] Scorecard was generated using the template with specific, evidence-based findings
- [ ] Top 3 recommendations were provided
- [ ] User received the complete scorecard
</success_criteria>
