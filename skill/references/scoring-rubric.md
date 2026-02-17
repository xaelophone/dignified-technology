<table_of_contents>
1. Overview
2. Grade Definitions
3. Authorship Preservation Rubric
4. Creative Range Rubric
5. Voice Amplification Rubric
6. Process Involvement Rubric
7. Depth of Exploration Rubric
8. Input Agency Rubric
9. Overall Dignity Grade Calculation
</table_of_contents>

<overview>
This rubric defines what each letter grade (A through F) means for each of the six Dignified Technology principles. Use this to assign grades during the audit.

Each grade level includes a **definition** and **concrete behaviors** that would earn that grade. When evidence is ambiguous, lean toward the lower grade — it is better to challenge a product to improve than to give credit for intent without execution.
</overview>

<grade_definitions>
| Grade | General Meaning |
|-------|-----------------|
| **A** | Exemplary — the product actively champions this principle by design. It is a deliberate, measurable commitment visible in architecture, UX, and documentation. |
| **B** | Strong — the product respects this principle with minor gaps. The intent is clear and mostly executed, but some edges are unpolished. |
| **C** | Adequate — some attention paid, but not a deliberate design choice. The principle is partially present, likely as a side effect rather than a goal. |
| **D** | Weak — the product undermines this principle in notable ways. The default experience erodes this dimension of human work. |
| **F** | Absent — this principle is not considered. The product actively harms this dimension, or the design makes it structurally impossible to uphold. |
</grade_definitions>

<rubric principle="Authorship Preservation">
<grade level="A">
The user is unambiguously the author. AI never produces content the user didn't explicitly request. The tool scaffolds the user's creation process (outlines, questions, feedback) but the user writes. The user would sign their name without hesitation.

**Example behaviors**: AI asks questions to draw out the user's thinking, then the user writes. AI provides structure but not prose. The product documentation explicitly names authorship as a protected value.
</grade>

<grade level="B">
The user is primarily the author. AI may generate drafts or suggestions, but the workflow is designed so the user substantially reworks them. The product clearly positions AI output as a starting point, not a finished product.

**Example behaviors**: AI generates a skeleton draft the user rewrites entirely. AI suggests but user decides. Most output requires meaningful user transformation before use.
</grade>

<grade level="C">
Authorship is mixed. AI generates content that the user edits but doesn't fundamentally reshape. The user's role is closer to editor than author, though they have the opportunity to change things.

**Example behaviors**: AI produces drafts the user tweaks. Auto-complete features that write significant chunks. The user could claim authorship but might feel uncertain about it.
</grade>

<grade level="D">
The user is primarily an editor of AI output. The tool generates near-complete work that the user reviews and lightly modifies. The user's contribution is selection and approval, not creation.

**Example behaviors**: One-click generation with an edit step. AI produces "final" content the user rubber-stamps. The output would look essentially the same regardless of who used the tool.
</grade>

<grade level="F">
The user is not an author in any meaningful sense. AI generates the output; the user's role is to accept or reject. No mechanism exists for the user to shape the work during creation.

**Example behaviors**: Fully automated content generation. No user input beyond the initial prompt. Output is presented as complete. The user's name is attached to work they didn't create.
</grade>
</rubric>

<rubric principle="Creative Range">
<grade level="A">
The tool systematically expands the user's creative range. It surfaces multiple perspectives, alternative framings, and unexpected connections. Users consistently explore more ideas than they would alone.

**Example behaviors**: Tool presents 3+ angles before the user commits to a direction. Explicit "explore alternatives" features. Mechanism for challenging the user's initial framing. Divergent phase built into the workflow.
</grade>

<grade level="B">
The tool broadens creative range in most interactions. Multiple options are surfaced, though not always systematically. The user has access to alternative perspectives but may need to ask for them.

**Example behaviors**: AI offers alternative approaches when asked. Some built-in mechanisms for exploring different angles. The tool occasionally surfaces unexpected connections.
</grade>

<grade level="C">
The tool neither significantly expands nor flattens creative range. It may offer one or two alternatives, but exploration isn't a core part of the workflow.

**Example behaviors**: Single output with a "regenerate" button. User can ask for alternatives but the tool doesn't proactively offer them. Output variety exists but isn't designed for.
</grade>

<grade level="D">
The tool narrows creative range. It converges quickly to a single output and provides little mechanism for exploring alternatives. Users report producing similar outputs to each other.

**Example behaviors**: Template-driven output with surface-level variation. No divergent exploration phase. "Best answer" framing that discourages alternatives. Users accept the first output most of the time.
</grade>

<grade level="F">
The tool actively flattens creative range. It produces one output with no alternatives, no mechanism for exploration, and no way to challenge the framing. All users get essentially the same result.

**Example behaviors**: Single-shot generation with no variation controls. Rigid templates. Output is indistinguishable between users. No concept of creative exploration in the product.
</grade>
</rubric>

<rubric principle="Voice Amplification">
<grade level="A">
The tool actively learns and amplifies the user's unique voice. Output clearly reflects the individual user's thinking, style, and perspective. Two different users produce meaningfully different results.

**Example behaviors**: Tool ingests prior work to learn style. Output adapts to the user's tone and perspective. Explicit mechanisms for expressing preferences. The user recognizes themselves in the output.
</grade>

<grade level="B">
The tool respects the user's voice in most interactions. There are mechanisms for expressing style preferences, and the output generally reflects the user's perspective, though some defaults may bleed through.

**Example behaviors**: Style settings or preferences the user can configure. AI adapts to some aspects of user voice. Output sounds somewhat like the user, with occasional generic notes.
</grade>

<grade level="C">
The tool has a neutral effect on voice. It neither strongly amplifies nor replaces the user's perspective. Output is somewhat generic but not aggressively so.

**Example behaviors**: No explicit voice-learning features. Output uses a default tone that the user can manually adjust. The tool doesn't actively overwrite the user's style but doesn't preserve it either.
</grade>

<grade level="D">
The tool's default voice dominates. Output sounds like the tool, not the user. Users would need significant effort to make the output reflect their own perspective.

**Example behaviors**: Strong default tone that pervades all output. No mechanism for voice customization. Users from different backgrounds produce similar-sounding results. The "AI voice" is unmistakable.
</grade>

<grade level="F">
The tool replaces the user's voice entirely. All output sounds identical regardless of user. There is no mechanism for expressing or preserving individual perspective. The user's unique voice is irrelevant to the product.

**Example behaviors**: Fully generic output. No style controls. The tool's personality dominates every interaction. Users cannot distinguish their output from anyone else's.
</grade>
</rubric>

<rubric principle="Process Involvement">
<grade level="A">
The user is deeply involved at every stage. The tool asks questions, requests decisions, and prompts reflection throughout the creation process. The workflow is collaborative by design.

**Example behaviors**: Multi-stage process with user input at each step. Tool asks clarifying questions before generating. Intermediate checkpoints where the user steers direction. The process itself is designed to deepen the user's thinking.
</grade>

<grade level="B">
The user is involved at most stages. The tool includes meaningful decision points, though some steps may proceed automatically. The user has opportunities to steer but isn't always prompted to.

**Example behaviors**: Several user-input stages with some automated transitions. Tool asks questions in some contexts but not all. User can intervene at any point but isn't always invited to.
</grade>

<grade level="C">
The user is involved at the beginning and end but not in the middle. The process is: provide input -> AI processes -> review output. There are limited intermediate decision points.

**Example behaviors**: Input-then-output workflow with a review step. User provides initial direction but doesn't shape the process. Some ability to iterate but the core flow is one-shot.
</grade>

<grade level="D">
The user is minimally involved. The primary interaction is: prompt -> output -> accept. There may be a review step, but the user's role is to approve rather than shape.

**Example behaviors**: Single prompt triggers full generation. Thin review step that most users skip. No intermediate questions or decision points. The tool "does the work" independently.
</grade>

<grade level="F">
The user is not involved in the process. The tool operates autonomously after initial configuration. There are no decision points, no questions, no opportunities to steer.

**Example behaviors**: Fully automated pipelines. User's only action is triggering and accepting. No intermediate human involvement is possible. The tool is designed to minimize human participation.
</grade>
</rubric>

<rubric principle="Depth of Exploration">
<grade level="A">
The tool consistently helps users reach insights they wouldn't have found alone. It challenges assumptions, surfaces connections, and deepens understanding. Users report learning through the process.

**Example behaviors**: Socratic questioning that surfaces hidden assumptions. Connections drawn to the user's prior work. Tool challenges weak arguments or unexplored angles. Users describe "aha moments" during use.
</grade>

<grade level="B">
The tool frequently deepens the user's thinking. It offers perspectives or connections that enrich understanding, though not always systematically.

**Example behaviors**: Occasional assumption-challenging prompts. Some mechanism for surfacing related ideas. Users sometimes discover new perspectives. The tool adds depth but doesn't always push for it.
</grade>

<grade level="C">
The tool provides useful output but doesn't significantly deepen thinking. It answers questions competently but doesn't push the user to think more deeply.

**Example behaviors**: Competent answers that don't challenge assumptions. Output that is correct but shallow. No mechanism for deepening engagement. Users save time but don't gain understanding.
</grade>

<grade level="D">
The tool short-circuits thinking. It provides ready answers that discourage deeper engagement. Users report getting things done faster but understanding less.

**Example behaviors**: Instant answers that bypass the thinking process. No mechanism for questioning or exploring. Users accept AI output without engaging with the reasoning. Speed is prioritized over depth.
</grade>

<grade level="F">
The tool actively prevents depth. It generates surface-level output with no mechanism for going deeper. The design assumes the user wants answers, not understanding.

**Example behaviors**: Fully automated output with no explanatory content. No way to ask "why" or explore reasoning. The tool treats thinking as a problem to be eliminated. Users become dependent on the tool for answers they used to derive themselves.
</grade>
</rubric>

<rubric principle="Input Agency">
<grade level="A">
The user has full sovereignty over what the tool presents. AI is opt-in, not opt-out. Defaults are quiet and respectful. The user controls when, how, and whether AI participates.

**Example behaviors**: AI activates only when explicitly requested. No unsolicited notifications or suggestions. User controls all content surfacing. The default state is quiet. Opting in is easier than opting out would be.
</grade>

<grade level="B">
The user has strong control with minor exceptions. Most AI features are opt-in. Notifications and suggestions are minimal and configurable. A few defaults may lean toward surfacing content.

**Example behaviors**: Most AI features require user activation. Some subtle suggestions that can be easily dismissed or disabled. Good notification controls. Occasional proactive suggestions that are well-targeted and unobtrusive.
</grade>

<grade level="C">
The user has moderate control. Some features are opt-in, others are opt-out. There's a mix of solicited and unsolicited AI participation. Controls exist but aren't prominent.

**Example behaviors**: Auto-complete or suggestions on by default but can be turned off. Some unsolicited AI features. Notification controls exist but require finding settings. Mixed opt-in/opt-out model.
</grade>

<grade level="D">
The user has limited control. Many AI features are opt-out or cannot be disabled. Unsolicited content is common. Maintaining attentional sovereignty requires significant effort.

**Example behaviors**: AI suggestions enabled by default with no obvious off switch. Frequent unsolicited notifications. Algorithmic content insertion. The user has to actively fight the tool for quiet.
</grade>

<grade level="F">
The user has no sovereignty over their attention. The tool maximizes its own presence in the user's field. Notifications, suggestions, and AI-generated content are constant and cannot be fully controlled.

**Example behaviors**: Constant unsolicited AI output. No way to disable suggestions or notifications. Algorithmic content insertion with no user control. The tool demands attention by design. Opting out is impossible or punished.
</grade>
</rubric>

<overall_grade_calculation>
**Calculation method**:
1. Assign each principle a numeric value: A=4, B=3, C=2, D=1, F=0
2. Calculate the average across all 6 principles
3. Map the average back to a letter grade:
   - 3.5-4.0 = A
   - 2.5-3.49 = B
   - 1.5-2.49 = C
   - 0.5-1.49 = D
   - 0-0.49 = F

**Critical rule**: An F on any single principle caps the overall grade at D, regardless of the average. A product that completely fails one dimension of dignity cannot be considered dignified overall.

**Interpretation guidance**:
- **A**: This product is a model of dignified technology. Share it as an example.
- **B**: This product takes dignity seriously with room for improvement. The team clearly cares.
- **C**: This product has not made dignity a deliberate design choice. It may respect some principles accidentally.
- **D**: This product undermines human dignity in notable ways. Significant redesign needed.
- **F**: This product fails the dignity test. Fundamental rethinking required.
</overall_grade_calculation>
