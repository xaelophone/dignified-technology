## Getting Started

The Dignified Technology rubric scores six principles of human dignity in technology, each graded A through F. You can use it two ways: as an automated Claude Code skill, or as a manual framework applied by hand.

### How the rubric works

Each principle asks a specific question about your product:

- **Authorship Preservation**: Would the user sign their name on the output without hesitation?
- **Creative Range**: Does the tool expand the user's creative range, or flatten it?
- **Voice Amplification**: Does it amplify the user's unique voice, or replace it with a default?
- **Process Involvement**: Is the user involved throughout, or just at the beginning and end?
- **Depth of Exploration**: Did the user reach an insight they wouldn't have found alone?
- **Input Agency**: Does the user control what reaches them, or does the tool decide?

Grades mean:

- **A** — Exemplary. This principle is a deliberate, visible commitment in the product's architecture.
- **B** — Strong. The intent is clear with minor gaps.
- **C** — Adequate. The principle is partially present, likely by accident rather than design.
- **D** — Weak. The product undermines this principle in notable ways.
- **F** — Absent. The product actively harms this dimension.

The overall Dignity Grade averages all six scores (A=4, B=3, C=2, D=1, F=0). An F on any single principle caps the overall grade at D — a product that completely fails one dimension of dignity cannot be considered dignified overall.

### How we used it on Hermes

The [Hermes audit](examples/hermes-audit.md) followed a three-phase process:

**1. Codebase diagnosis.** We read the source code — AI integration points, user-facing flows, system prompts, CLAUDE.md — and formed a preliminary grade for each principle based on what the code revealed. Three principles (Authorship Preservation, Process Involvement, Input Agency) were clear from code alone. Three had gaps that needed human input.

**2. Targeted interview.** For the three principles with gaps, we asked the builder one question each. Is the lack of structured divergent exploration intentional? Is the new-user voice limitation a known tradeoff? Is the reactive depth model by design? All three turned out to be intentional design choices, which confirmed the preliminary B grades rather than lowering them.

**3. Values-as-Spec assessment.** Three questions that are always asked, because they require human intent that code can't reveal: What values has the product committed to protecting? Where is the human in the loop? What does the product refuse to automate? The builder named three values (authorship, sovereignty, thinking over output) that directly shaped design decisions — this is Values-as-Spec working as intended.

The result: an overall A, with three principles earning A and three earning B. The B grades reflect intentional tradeoffs, not oversights.

### How to use it yourself

**With Claude Code** (automated):

Install the skill and run `/dignified-technology` in your project directory. The skill reads your codebase, asks targeted questions about gaps it can't resolve from code, conducts the Values-as-Spec assessment, and produces a scorecard.

```
curl -sSL https://raw.githubusercontent.com/xaelophone/dignified-technology/main/install.sh | bash
```

**Without Claude Code** (manual):

1. For each of the six principles, examine your product and assign a grade using the rubric definitions above. Look at your AI integration points, user-facing flows, and default behaviors. Grade what's built, not what's planned.

2. Ask yourself the three Values-as-Spec questions: What values has your product committed to protecting — values that have directly shaped a design decision? How does your product involve the user in its processes — where is the human in the loop, and where aren't they? What does your product explicitly refuse to automate — not what it can't do, but what it won't do?

3. If you can't answer any of those three questions with a specific example tied to a design decision, that's the most important finding of the audit.

4. Calculate the overall grade and identify your top three highest-impact improvements.

The rubric is intentionally strict: when evidence is ambiguous, lean toward the lower grade. It's better to challenge a product to improve than to give credit for intent without execution.
