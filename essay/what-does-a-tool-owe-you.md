# What Does a Tool Owe You?

There's a question I keep coming back to when I'm building something: what does this tool owe the person using it?

Not 'what does it do for them' — that's a feature question. And not 'does it make them more productive' — that's an efficiency question. I mean something harder than both of those: what does it owe them in the human sense? What is it taking from them in exchange for what it's giving? And is that trade one they would have chosen if anyone had asked?

The Shirky Principle will say that institutions will try to preserve the problem to which they are the solution. I wonder if it goes the same for our tools. And if we as humans have given (or even been asked for) consent to the tradeoffs that the discernment (and hence energy) the use of these tools requires.

I've been building creative tools at a media company for the last year, and this question follows me into every product decision I make. Tools can deepen the user's relationship to their own work by making it better, or it can assert itself at the expense of its original purpose. And most of the people building AI tools have not thought carefully about what values are embedded in their products.

---

AI is working alongside us. The marketing from AI labs is not fluff. AI is not just showing up in the pervasive recommendation systems that we collectively describe as "the algorithm" anymore. AI lives in enterprise processes, involved with the actual work production that was once handled exclusively by humans. The writing, the design, the coding, the thinking. And the fundamental capability it introduces is the ability to remove the human from any of those processes. Entirely. You can choose to take the writer out of the writing. The designer out of the design. The thinker out of the thinking.

AI for work can be applied in opposite ways when it comes to preserving human dignity; the technology is the same either way.

One way: you use AI to generate the output. The user types a prompt, the tool produces a draft, and the human becomes an editor of machine output rather than an author. Fast, efficient. The relationship between the person and their ideas is replaced by a relationship between the person and a tool's output. They didn't shape the work. They accepted it as finished.

The other way: you use AI to deepen the process. The tool asks questions that draw out what you actually think. It surfaces three angles you hadn't considered. It challenges the weakest assumption in the draft. It finds connections to other work you've done and forgotten about. It helps you go further into the idea than you could have gone alone — and then the work you produce feels genuinely yours, more completely yours than it would have been without the tool, because it directly conspired in helping you go deeper. Just like a true collaborator would.

Both approaches apply the same underlying technology. The difference is entirely in what the people who built it decided the tool was for. Whether it was designed to produce output or to deepen thinking. Whether it treats human involvement as the bottleneck, or as the whole point. And what is the price to be paid for the fragility of borrowed intelligence.

There's another dimension here that I think is undernamed. Agency — in the way we usually talk about it — is your capacity to act. But there's something prior to that: your capacity to govern what reaches you. I think of this as input agency. Most tools we build today have been designed to maximize other people's access to our attention while giving us almost no sovereignty over what enters our field. The notification you didn't ask for. The algorithmic insertion you never consented to. The default is open; opting out is the labor. And that labor — the constant discernment required just to maintain your own attentional sovereignty — is itself an unconsented cost. A tool that erodes your input agency is already failing the dignity test before you've even started using it for its stated purpose.

---

I want to give a name to the design philosophy that chooses the second path, because naming things is how we start being able to choose them deliberately.

I'll call it Dignified Technology: tools that protect and elevate the creative, expressive, and irreplaceable dimensions of human work. Tools that treat those dimensions — creativity, self-expression, authorship, discernment, thinking, attention — as devotional practices rather than inefficiencies to be optimized away.

That phrase, 'devotional practices,' is doing some work here and I want to explain it. When I say that creativity is a devotional practice, I don't mean it in a religious sense. I mean that these are things we do that have intrinsic value — value in the doing, not just in the output. The act of writing an essay teaches you what you think. The act of designing something teaches you what you care about. The act of working through a problem teaches you how to think. These processes can't be outsourced without losing what made them valuable. You can't delegate your thinking to a tool and still expect to truly understand something. The transformation is in the process, not the outcome.

Technology that catalyzes these devotions makes them more valuable. Technology that replaces them makes them irrelevant, destroys the dignity that underpins doing truly amazing work. That's the choice that's being made in every AI tool being built right now, and almost nobody applying the technology is making it consciously as part of their design process.

---

The practical version of this is simpler than it sounds.

I think about it as a product requirement: does this tool expand the user's creative range, or flatten it? Does it amplify their voice, or replace it? Does the user feel genuine ownership of what they created? Does the tool make them a better judge of quality over time, or a passive acceptor of generated output? Did the tool help them go deeper into an idea than they could alone — more connections made, more assumptions challenged, more concepts explored?

These are not soft questions. You can measure each of them. I call them dignity metrics, and they're as real and trackable as any product metric — we've just never built the acceptance criteria and instrumentation for them because we've never decided that they matter.

Take authorship, for example, could you measure whether the user would sign their name on the work output without hesitation? Or conceptual range: how many more ideas did they explore because of this tool? Maybe process involvement: did the tool ask them questions, or just produce output? Depth of exploration: did they reach an insight they wouldn't have found alone?

Speed and efficiency still matter. But as one metric category among others that we develop to meet the reality of contemporary technologies, like superhuman-level AI.

---

The way I operationalize this when developing AI tools is simple. I add a value system section to every product requirements document. The PRD defines three things: what values the product is committed to protecting; how the product involves the user in its processes; and — crucially — what the product explicitly will not automate or replace. What it does, won't do, and can't do.

That last one is the hardest and most important. It requires explicitly defining which parts of the work are dignified, and therefore worth involving a human collaborator. It requires saying: this is where the tool stops and the person starts. Most product teams never make that choice explicitly. They let the algorithm's logic make it for them, which always answers the same way: automate everything you can.

Values-as-Spec is the practice of making that choice deliberately — embedding it in the requirements, making it as concrete and measurable as any feature specification.

---

I've been working in this way for the last year, and I'm increasingly convinced it's not just the right approach — it's the durable one. There's a business case here that doesn't require any appeal to ethics.

Tools that make workers feel replaced breed animosity. Loyalty is fragile — it lasts exactly as long as someone feels valued, and therefore respected. Tools that make users feel more capable, more creative, more themselves produce loyalty, which compounds. Strong employee retention is downstream of whether the work was rewarding, which starts with tools that encourage meaningful ownership, quality, and impact.

There's a broader movement forming around adjacent ideas — the Resonant Computing Manifesto, signed by people like Tim O'Reilly and Kevin Kelly, applies Christopher Alexander's architectural theory to argue that software can either enliven or deaden us. The movement's diagnosis is sharp. What I'm adding is the implementation layer: the values-as-spec template, the dignity metrics, the specific product decisions that turn these principles into something you can integrate into your work today.

I've signed it and I urge you to also sign it. They're also crowdsourcing theses for what it means to have dignified-resonant-computing.

---

Let me come back to the question I started with.

What does a tool owe you? I think the answer is this: a tool owes you your own capability back, amplified. It owes you a relationship with your work that is deeper and more yours for having used it. It owes you the dignity of being the one who did the thinking, even when it helped you think.

That's a design choice, and it's available to anyone building right now. It requires no special technology, no particular budget, no philosophical training. It just requires deciding — explicitly, in the product requirements, with metrics attached — that a person's relationship to their own work is the thing worth protecting.

Every founder, product manager, designer, and developer makes this choice with every feature they ship. Often they decide unconsciously, by inheriting the default logic of whatever metric is rewarded. But metrics must be designed consciously, because they will be optimized. They can be embedded in requirements. They can be measured.

Start there. Ask what the tool owes the person using it. Write down the answer. Build toward it.

The future of technology doesn't have to be a race to automate away everything that makes work meaningful — but only if we choose, deliberately, to build something that makes us more alive, will we live in a world of dignified technology.

> "With few ambitions, most people allowed efficient machines to perform everyday tasks for them. Gradually, humans ceased to think, or dream... or truly live."
> — Brian Herbert, *The Butlerian Jihad*
