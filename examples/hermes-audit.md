# Dignified Technology Audit

> "A tool owes you your own capability back, amplified."

**Date**: 2026-02-18

**Assessed by**: Claude (with interview input from Sean Thielen-Esparza)

**Overall Dignity Grade**: A

## Principle Scores

**Authorship Preservation — A**: AI never writes prose — it reads, questions, and highlights. The user is unambiguously the author.

**Creative Range — B**: 8 highlight types surface multiple angles; chat allows divergent exploration. But no structured divergent phase.

**Voice Amplification — B**: Voice highlights flag style deviations using prior essays. New users have no voice profile yet — by design.

**Process Involvement — A**: Multi-step loop: write, chat, receive highlights, accept/dismiss/reply, refine. User decides at every point.

**Depth of Exploration — B**: Weakness, evidence, and factcheck highlights challenge arguments. Reactive by design — responds to writing, doesn't precede it.

**Input Agency — A**: All AI features are opt-in. No auto-complete, no unsolicited suggestions. Chat minimized by default.

## Detailed Findings

**Authorship Preservation — A**

**What we found**: Hermes draws a hard line: AI provides feedback, never content. The user writes in a TipTap editor; AI reads that writing and responds with highlights — questions, suggestions, weaknesses, factchecks. Even the edit and wordiness highlights, which offer replacement text, require explicit user acceptance before anything changes. The system prompt describes Hermes as "a thoughtful writing assistant...the kind of reader every writer wishes they had." The CLAUDE.md reinforces this: "structures your thinking without doing the writing for you." This is authorship preservation by architecture, not just policy.

**Recommendation**: None needed. This is exemplary. Consider documenting this design choice publicly as a reference for other tools.

**Creative Range — B**

**What we found**: Hermes surfaces creative range through 8 highlight types (question, suggestion, weakness, evidence, voice, factcheck, edit, wordiness) that each push the user to consider a different angle on their writing. The Are.na integration connects external research into the writing flow. However, there is no structured "explore 3 alternatives" feature or explicit divergent phase in the workflow. The builder confirmed this is intentional — users explore through conversation in the chat panel, not through structured divergent features.

**Recommendation**: Consider adding a lightweight "what angles haven't I explored?" prompt the user can invoke, which surfaces the highlight types most absent from the current piece (e.g., "you haven't challenged any of your claims — want factcheck highlights?").

**Voice Amplification — B**

**What we found**: Hermes has a dedicated "voice" highlight type that flags when the user's current writing deviates from their established style, using prior published essays as a reference corpus. This is a genuine voice-learning mechanism — it adapts to the individual user rather than imposing a default tone. The limitation: new users with no prior essays get no voice adaptation. The builder confirmed this is a known, accepted limitation — voice builds over time as the user writes more.

**Recommendation**: For new users, consider offering a brief voice intake (e.g., "paste a paragraph you're proud of" or "describe your writing style in 3 words") to bootstrap the voice profile from the first session.

**Process Involvement — A**

**What we found**: The Hermes workflow is inherently multi-step and user-driven. The user writes, then optionally opens the chat to request feedback. AI responds with highlights, each of which the user can accept, dismiss, or reply to for further discussion. Question highlights explicitly ask the user to think deeper. The chat itself is conversational and iterative — not a one-shot oracle. There is no "generate my essay" button, no one-click path from blank page to finished piece. The builder confirmed the user is in the loop for all content decisions, with only infrastructure (essay loading, context assembly) happening automatically.

**Recommendation**: None needed. The multi-step, decision-rich workflow is a model of process involvement.

**Depth of Exploration — B**

**What we found**: Hermes challenges the user's thinking through weakness highlights (flagging the weakest arguments), evidence highlights (identifying where data would strengthen claims), and factcheck highlights (questioning specific assertions). The Are.na integration surfaces external connections that can deepen research. However, the tool is reactive by design — it responds to existing text rather than proactively pushing deeper thinking before the user starts writing. The builder confirmed this is intentional: the tool responds to the user's writing, not the other way around.

**Recommendation**: Consider an optional pre-writing mode where the user can describe their thesis in one sentence and receive 3 questions designed to stress-test it before they begin drafting. This preserves the reactive default while offering depth-first users a path to challenge their assumptions early.

**Input Agency — A**

**What we found**: Every AI feature in Hermes is opt-in. The floating chat is minimized by default. Highlights only appear after the user explicitly requests them by sending a message. There is no auto-complete, no inline suggestion, no algorithmic content insertion. The only unsolicited element is a signup toast for unauthenticated users, which is dismissible and persisted to localStorage so it only appears once. The builder explicitly identified "unsolicited suggestions" as something Hermes refuses to automate. This is attentional sovereignty by architecture.

**Recommendation**: None needed. This is exemplary. The opt-in model is the clearest expression of input agency in any AI writing tool we've assessed.

## Values-as-Spec Assessment

**Values protected**:

- Authorship above all — AI never generates prose. This shaped the entire highlight-based architecture.

- User sovereignty — The user controls when AI participates. No unsolicited suggestions, no auto-complete.

- Thinking over output — The tool exists to deepen thinking, not produce content. Speed and volume are explicitly deprioritized.

**User involvement**: The user is mostly in the loop. Every AI action requires user initiation (open chat, send message, request highlights) and every AI output requires user decision (accept/dismiss/reply). Background processes like essay loading and context assembly happen automatically, but these are infrastructure, not content decisions.

**Automation boundaries**: Hermes explicitly refuses to write prose. It provides feedback, questions, highlights, and conversational assistance — but the words on the page are always the user's.

**Gap**: Publishing decisions and unsolicited suggestions were identified as automation boundaries in the interview but are not codified as design principles in product documentation. Consider adding a "What Hermes Won't Do" section to the product's public-facing materials.

## Top 3 Recommendations

1. **Bootstrap voice for new users**: Add a lightweight voice intake (paste a paragraph, describe your style) so voice amplification works from the first session, not just after multiple essays.

2. **Optional pre-writing depth mode**: Offer a "stress-test my thesis" feature where users can describe their argument in one sentence and receive probing questions before drafting — preserving the reactive default while giving depth-first users an earlier entry point.

3. **Document automation boundaries publicly**: Codify "What Hermes Won't Do" (write prose, make publishing decisions, offer unsolicited suggestions) in product documentation so users understand the design contract.

*Evaluation based on the [Dignified Technology framework](https://github.com/xaelophone/dignified-technology).*
