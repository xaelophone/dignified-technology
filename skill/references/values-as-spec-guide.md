<overview>
The Values-as-Spec assessment evaluates whether a product team has explicitly defined the values embedded in their product — not as aspirational statements, but as concrete specification constraints that shape design decisions.

This assessment is **always conducted** regardless of what the codebase diagnosis reveals, because it requires human intent that cannot be inferred from code alone.

From the essay: "The PRD defines three things: what values the product is committed to protecting; how the product involves the user in its processes; and — crucially — what the product explicitly will not automate or replace."
</overview>

<assessment_questions>

<question number="1" name="Values Protected">
**Ask**: "What values is your product committed to protecting? Not aspirational values — values that have directly shaped a design decision you've made."

<what_good_looks_like>
A strong answer names specific values and connects them to specific design decisions:
- "We protect authorship — that's why AI never generates final prose, only outlines and feedback."
- "We protect creative autonomy — that's why we surface 3 angles before the user commits to a direction."
- "We protect attention sovereignty — that's why all AI features are opt-in and the default state is quiet."

The values should be **observable in the product**, not just stated in a manifesto.
</what_good_looks_like>

<what_gaps_look_like>
- Vague answers: "We value quality" or "We care about the user experience"
- Values disconnected from decisions: "We value creativity" but the product auto-generates everything
- No answer: The engineer cannot name values that have shaped design decisions
- Aspirational only: "We want to protect authorship" but no feature reflects this
</what_gaps_look_like>

<flag_if>
The engineer cannot name a single value that directly influenced a design decision. This means values are not operating as spec — they are decorative.
</flag_if>
</question>

<question number="2" name="User Involvement">
**Ask**: "How does your product involve the user in its processes? Walk me through where the human is in the loop, and where they aren't."

<what_good_looks_like>
A strong answer maps the user's involvement across the product's key workflows:
- "During writing, the AI asks questions in an interview phase, then the user writes the draft. AI gives feedback on the draft but never rewrites it."
- "The user controls when AI activates — it's always a deliberate choice, never automatic."
- "We have three stages: brainstorm (user + AI), draft (user only), review (AI feedback on user's work)."

The key marker is **specificity** — the engineer can point to exact workflows and explain the human's role at each step.
</what_good_looks_like>

<what_gaps_look_like>
- Vague process descriptions: "The user interacts with the AI"
- No clear human-in-the-loop design: "The user types a prompt and gets output"
- Lack of workflow awareness: The engineer can't describe where the human is involved and where they aren't
- Passive user role: The human's role is described entirely in terms of reviewing or accepting AI output
</what_gaps_look_like>

<flag_if>
The engineer cannot describe specific points where the user actively shapes the process (not just reviews output). This means the product treats human involvement as optional rather than essential.
</flag_if>
</question>

<question number="3" name="Automation Boundaries">
**Ask**: "What does your product explicitly refuse to automate? Not what it can't do — what it *won't* do, by design choice?"

<what_good_looks_like>
A strong answer names specific capabilities the product could automate but deliberately doesn't:
- "We could auto-generate the full essay, but we won't. The user writes every word of the final draft."
- "We refuse to auto-send emails. The user always reviews and hits send themselves."
- "We won't auto-summarize without the user's involvement — we ask the user what matters before summarizing."

The essay calls this "the hardest and most important" part: "explicitly defining which parts of the work are dignified, and therefore worth involving a human collaborator."
</what_good_looks_like>

<what_gaps_look_like>
- No explicit boundaries: "We automate what we can and let users override"
- Confusion between can't and won't: "We don't automate X because we haven't built it yet" (that's a capability gap, not a value choice)
- Nothing is off-limits: The engineer cannot name something the product refuses to automate
- Technology-limited thinking: Boundaries are defined by what's technically possible, not what's ethically appropriate
</what_gaps_look_like>

<flag_if>
The engineer cannot name a single thing the product explicitly refuses to automate by design choice. This is the clearest indicator that values are not operating as specification constraints. The essay is unambiguous: "Most product teams never make that choice explicitly. They let the algorithm's logic make it for them, which always answers the same way: automate everything you can."
</flag_if>
</question>

</assessment_questions>

<scoring_guidance>
The Values-as-Spec assessment is **not scored with a letter grade**. Instead, it produces one of three outcomes:

**Values-as-Spec: Present** — The engineer can clearly answer all three questions with specific, decision-connected answers. Values are operating as specification constraints.

**Values-as-Spec: Partial** — The engineer can answer some questions but not all, or answers are vague/aspirational rather than concrete. Values exist but aren't fully embedded in the product requirements.

**Values-as-Spec: Absent** — The engineer cannot answer the questions meaningfully. Values are not part of the product specification process. This is flagged as a critical gap.

When Values-as-Spec is Absent, include this recommendation in the scorecard:
> "Consider adding a values section to your product requirements documents. Define what values the product protects, how the user is involved, and what the product explicitly refuses to automate. Make these as concrete and measurable as any feature specification."
</scoring_guidance>
