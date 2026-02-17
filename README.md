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

```bash
# Clone the repo
git clone https://github.com/your-username/dignified-technology.git

# Symlink the skill into Claude Code
ln -s /path/to/dignified-technology/skill ~/.claude/skills/dignified-technology
```

## Usage

In any project directory with Claude Code:

```
/dignified-technology
```

The skill will read your codebase, ask targeted questions, and produce a scorecard.

## Example output

```
# Dignified Technology Audit — Hermes

> "A tool owes you your own capability back, amplified."

**Overall Dignity Grade**: B

| Principle | Grade | Summary |
|-----------|-------|---------|
| Authorship Preservation | A | AI structures thinking but never writes the final draft |
| Creative Range | B | Interview surfaces angles, but limited divergent exploration |
| Voice Amplification | B | Prior work used for voice consistency, some defaults remain |
| Process Involvement | A | Six-stage pipeline with user input at every stage |
| Depth of Exploration | B | Challenges assumptions in feedback, could go deeper |
| Input Agency | A | All AI features are opt-in, default state is quiet |
```

## The essay

The full essay is included at [`essay/what-does-a-tool-owe-you.md`](essay/what-does-a-tool-owe-you.md) for reference.

## Contributing

This is an open framework. If you've run the audit on your product and have suggestions for improving the principles, rubric, or interview flow, open an issue or PR.

## License

MIT
