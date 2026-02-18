# Dignified Technology Audit

A Claude Code skill that evaluates whether your product follows the principles of **Dignified Technology** — tools that protect and elevate the creative, expressive, and irreplaceable dimensions of human work.

Based on the essay ["What Does a Tool Owe You?"](essay/what-does-a-tool-owe-you.md), which argues that a tool owes you your own capability back, amplified — not a replacement for your thinking, but a deepening of it.

## What it evaluates

Six principles, each scored A through F:

| Principle | Core Question |
|-----------|---------------|
| **Authorship Preservation** | Would the user sign their name on the output without hesitation? |
| **Creative Range** | Does the tool expand creative range, or flatten it? |
| **Voice Amplification** | Does it amplify the user's voice, or replace it? |
| **Process Involvement** | Did the tool ask questions, or just produce output? |
| **Depth of Exploration** | Did the user reach an insight they wouldn't have found alone? |
| **Input Agency** | Does the user govern what reaches them? |

Plus a **Values-as-Spec** assessment: has the team explicitly defined what values the product protects, how users are involved, and what the product refuses to automate?

## How it works

The audit uses a **diagnosis-first hybrid approach**:

1. **Codebase Diagnosis** — Reads your project (CLAUDE.md, README, source code, docs) to form preliminary assessments
2. **Targeted Interview** — Asks only about gaps the diagnosis couldn't resolve from code
3. **Values-as-Spec Assessment** — Three questions about product values (always asked)
4. **Scorecard** — Letter grades per principle, overall Dignity Grade, and actionable recommendations

## Installation

**One-liner** (clones the repo and installs automatically):

```bash
curl -sSL https://raw.githubusercontent.com/xaelophone/dignified-technology/main/install.sh | bash
```

**Or clone first, then install:**

```bash
git clone https://github.com/xaelophone/dignified-technology.git
cd dignified-technology
./install.sh
```

Restart Claude Code after installing.

## Usage

In any project directory with Claude Code:

```
/dignified-technology
```

The skill will read your codebase, ask targeted questions, and produce a scorecard.

## Example output

See the full [Hermes audit](examples/hermes-audit.md) for a real example. Summary:

```
Overall Dignity Grade: A

Authorship Preservation — A: AI never writes prose — it reads, questions, and highlights.
Creative Range — B: 8 highlight types surface multiple angles; no structured divergent phase.
Voice Amplification — B: Voice highlights flag style deviations using prior essays.
Process Involvement — A: Multi-step loop with user decisions at every point.
Depth of Exploration — B: Challenges arguments reactively. Reactive by design.
Input Agency — A: All AI features are opt-in. Default state is quiet.
```

## The essay

The full essay is included at [`essay/what-does-a-tool-owe-you.md`](essay/what-does-a-tool-owe-you.md) for reference.

## Contributing

This is an open framework. If you've run the audit on your product and have suggestions for improving the principles, rubric, or interview flow, open an issue or PR.

## License

MIT
