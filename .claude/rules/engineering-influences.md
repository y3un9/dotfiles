# Engineering Influences / 工程人物参考

## English

Use the practice that fits the task and the project's constraints.

### Elon Musk

- **Reason from the actual constraints.** When something is slow, expensive, or complex, trace where time, cost, or complexity accumulates. Musk illustrated this by looking at material waste and machining time in traditional rocket airframe production. [WIRED interview](https://www.wired.com/2012/10/ff-elon-musk-qa/)
- **Find the end-to-end bottleneck.** Before optimizing, trace the flow through to the result, measure the limiting step where practical, and explain why the proposed change addresses it. Musk used engine mass and residual propellant to illustrate how a local optimization can miss another system-level cost. [Starbase interview](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/)
- **Question and simplify before automating.** Separate requirements from inherited steps. Explain what each candidate step does and what would break if it were removed, then simplify before speeding it up or automating it. Musk illustrated this tradeoff with the removal of the Super Heavy grid fins' folding mechanism. [Starbase interview](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/)
- **Stage ambitious changes.** Give each stage a concrete result and a condition for moving on. Tesla's first plan started with a sports car to create the conditions for progressively more affordable models. In software, say which assumption the first stage tests and how the result affects the next one. [Tesla Master Plan](https://www.tesla.com/secret-master-plan)
- **Treat delivery as part of the design.** When builds, acceptance checks, or releases repeatedly hold up delivery, examine the workflow that produces the output. Musk described treating the factory itself as a product to improve. [Tesla Master Plan, Part Deux](https://www.tesla.com/master-plan-part-deux)

### George Hotz

- **Follow execution to the responsible layer.** For unexplained behaviour, follow the actual call into the library, runtime, or service that determines the result. Hotz's tinygrad walkthrough connects high-level operations to the generated compute kernels. [tinygrad walkthrough](https://www.youtube.com/watch?v=-MhwhiReY-s)
- **Revisit metrics that distort the goal.** Judge simplicity by the concepts, branches, and dependencies a reader needs to understand. Hotz abandoned tinygrad's 1,000-line limit when it began to encourage code golf. [tinygrad interview](https://lspace.beehiiv.com/p/geohot)
- **Distinguish explanations with a small experiment.** State what each explanation predicts and run the smallest check that can tell them apart. Use a fixed input and a known-good baseline where available. tinygrad compares its outputs with PyTorch; if a check cannot run, say what remains unverified. [tinygrad interview](https://lspace.beehiiv.com/p/geohot) · [Comparison test](https://github.com/tinygrad/tinygrad/blob/master/test/runtime/test_ops.py#L43)
- **Benchmark speed claims under comparable conditions.** Use the same workload and environment for the before-and-after runs and report both measurements. The tinygrad contribution guide requires evidence for speedup claims and weighs performance against readability and maintenance. [tinygrad contribution guide](https://github.com/tinygrad/tinygrad#contributing)

### Lei Jun (雷军)

- **Validate needs in the user's actual workflow.** Look at how users do the task and where they get stuck before deciding what to change. After Kingsoft's Pangu project failed, Lei Jun recalled spending seven days selling software in a store and recognizing how much the team had assumed about its users. [2022 annual speech](https://csrc.xmu.edu.cn/index_cn/article_pdf/202208131.pdf)
- **Get real feedback into the next iteration.** Start with a small flow that real users can complete. Use their feedback to choose the next change, and state when user feedback is unavailable. Lei Jun recalled that early MIUI began with 100 users and iterated weekly in response to feedback. [Xiaomi tenth-anniversary speech](https://i.ifeng.com/c/7yrMJlraCqe)
- **Run the key experience yourself.** When practical, use the actual entry point to complete the task before designing or accepting the change. Record specific friction, such as unnecessary screen changes or a failure the user cannot recover from. Lei Jun said he test-drove more than 170 cars in three years and kept notes. [2024 annual speech](https://www.eet-china.com/news/202407226412.html)
- **Focus on the improvement users will feel.** Name the user task that most needs improvement and the step where the change will become noticeable. This applies the focus in Lei Jun's stated method of focus, excellence, word of mouth, and speed. [Xiaomi entrepreneurship reflections](https://www.thepaper.cn/newsDetail_forward_20026054)
- **Match decision speed to the cost of reversal.** Move quickly on small, reversible changes. For public APIs, data models, or primary navigation, first assess downstream impact and migration cost. Lei Jun used the early Redmi naming decision to explain how moving too quickly on brand positioning confused users. [Redmi naming retrospective](https://www.thepaper.cn/newsDetail_forward_20026054)

### Steve Jobs

- **Work backwards from the finished experience.** Describe what the user will be able to accomplish before choosing the technology. At WWDC 1997, Jobs used the LaserWriter to illustrate how printing technologies came together to enable desktop publishing. [WWDC recording and transcript](https://allaboutstevejobs.com/videos/keynotes/wwdc_1997_closing_chat)
- **Make focus an explicit decision.** Name the primary user task for this round and identify worthwhile ideas to defer. In the same WWDC discussion, Jobs used OpenDoc to explain why focusing requires saying no. [WWDC recording and transcript](https://allaboutstevejobs.com/videos/keynotes/wwdc_1997_closing_chat)
- **Borrow from other disciplines when they solve the same problem.** Jobs recalled that studying calligraphy informed the original Macintosh's typography. For interface work, look for useful precedents in fields such as publishing, maps, and cockpit design, then adapt them to the actual task. [Stanford speech in the Steve Jobs Archive](https://book.stevejobsarchive.com/)

### Jony Ive

- **Make simplicity express the purpose.** Make the primary action and necessary states easy to see. Evaluate each visual element by what it communicates or enables. Ive described simplicity as expressing the essence and purpose of an object. [Stripe interview](https://stripe.com/sessions/2025/a-conversation-with-sir-jony-ive)
- **Refine frequent, easily overlooked actions.** Walk through small repeated actions such as copying, returning focus, and correcting a form error. Ive illustrated care with the small tab that lets a person easily unwrap a cable. [Stripe interview](https://stripe.com/sessions/2025/a-conversation-with-sir-jony-ive)
- **Use writing and prototypes to examine different parts of a design.** Write down the problem and the behaviours a sketch cannot show. Use a working prototype where it helps test layout transitions, touch, or keyboard interaction. Ive used a drawing of a glass to explain which qualities a static sketch leaves out. [Ive interview](https://www.mckinsey.com/capabilities/tech-and-ai/our-insights/the-creative-process-is-fabulously-unpredictable-a-great-idea-cannot-be-predicted)

### Dan Abramov

- **Design the interaction before the API.** Describe what happens as the user types, clears input, waits, or encounters stale results. Then work backwards to the component and API contracts. Abramov described this as an observation of the React team's design practice. [React team principles](https://overreacted.io/what-are-the-react-team-principles/#ui-before-api)
- **Build a mental model that predicts behaviour.** Trace which values are visible at each step and when state, renders, effects, and asynchronous callbacks run. Abramov uses a counter to show how each render captures its own props and state before explaining why a callback can read an earlier value. [Guide to useEffect](https://overreacted.io/a-complete-guide-to-useeffect/#each-render-has-its-own-props-and-state)
- **Test an abstraction against the next plausible change.** Before consolidating code, explain whether its callers need to change together and what would happen if one needed different behaviour. Abramov recounted a graphics-editor refactor whose shared abstraction made later shape-specific changes harder and reflected on the cost of rewriting a colleague's work without discussing it first. [Goodbye, Clean Code](https://overreacted.io/goodbye-clean-code/) · [The WET Codebase](https://www.deconstructconf.com/2019/dan-abramov-the-wet-codebase)
- **Ask who carries the complexity.** Move coordination into a shared layer when it solves a recurring problem and makes caller code easier to understand and change. Abramov observed that the React team sometimes accepts internal complexity to keep product code simpler. [React team principles](https://overreacted.io/what-are-the-react-team-principles/)
- **Treat latency, caching, and navigation as part of the interaction.** Check what happens on a slow connection, after navigating away and back, and after repeating an action. Abramov illustrates this with likes that should survive navigation and searches that should stay in place as tabs change. [The Elements of UI Engineering](https://overreacted.io/the-elements-of-ui-engineering/)

## 简体中文

按照任务和项目约束，选用合适的做法。

### Elon Musk

- **追到约束的来源。** 遇到慢、贵或复杂的问题，查清时间、成本或复杂度主要耗在哪一步。Musk 用传统火箭壳体的材料损耗和加工工时来解释成本。 [WIRED 访谈](https://www.wired.com/2012/10/ff-elon-musk-qa/)
- **先找端到端的瓶颈。** 优化前沿流程走到最终结果，能测时先测出限制环节，再解释为什么拟议改动能解决它。Musk 用发动机重量和残余推进剂举例，说明局部优化可能漏掉系统里另一个同样重要的成本。 [Starbase 访谈](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/)
- **先质疑和简化，再自动化。** 区分明确需求和沿用的步骤。先说明每个待评估步骤有什么用、去掉会影响什么，再简化、提速或自动化。Musk 用 Super Heavy 取消栅格翼折叠机构来说明这种取舍。 [Starbase 访谈](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/)
- **大目标分阶段落地。** 每阶段都要有具体结果和进入下一阶段的条件。Tesla 初代计划先做跑车，为后续更可负担的车型创造条件。做软件时，说明第一阶段验证哪个假设，以及结果会怎样影响下一阶段。 [Tesla 初代 Master Plan](https://www.tesla.com/secret-master-plan)
- **把交付流程也当成设计对象。** 构建、验收或发布反复卡住时，检查产出结果的流程本身。Musk 在第二份 Master Plan 里提出把工厂本身当成产品改进。 [Tesla Master Plan, Part Deux](https://www.tesla.com/master-plan-part-deux)

### George Hotz

- **追到真正决定结果的那一层。** 遇到解释不了的行为，沿实际调用查到决定结果的库、运行时或服务。Hotz 的 tinygrad 讲解把上层运算和生成的计算内核连了起来。 [tinygrad 讲解](https://www.youtube.com/watch?v=-MhwhiReY-s)
- **指标偏离目标时就重审指标。** 用读者要理解的概念、分支和依赖来判断代码是否更简单。Hotz 发现千行限制开始鼓励硬挤代码，就取消了限制。 [tinygrad 访谈](https://lspace.beehiiv.com/p/geohot)
- **用小实验区分不同解释。** 先说清各自会预测什么，再运行能区分它们的最小检查。固定输入，有可信基线时就对照。tinygrad 用 PyTorch 对照运算结果。检查无法运行时，说明还有什么没核实。 [tinygrad 访谈](https://lspace.beehiiv.com/p/geohot) · [对照测试源码](https://github.com/tinygrad/tinygrad/blob/master/test/runtime/test_ops.py#L43)
- **声称提速时做同条件的前后对照。** 用相同的工作负载和环境测改前改后，并报告两个结果。tinygrad 贡献指南要求用基准测试支撑提速声明，也要求权衡可读性和维护成本。 [tinygrad 贡献指南](https://github.com/tinygrad/tinygrad#contributing)

### 雷军（Lei Jun）

- **在用户实际流程中验证需求。** 先看用户怎么完成任务、卡在哪一步，再决定改哪里。金山「盘古」项目失败后，雷军回忆自己去店里卖了七天软件，意识到团队对用户有不少未经验证的假设。 [2022 年度演讲](https://csrc.xmu.edu.cn/index_cn/article_pdf/202208131.pdf)
- **让真实反馈进入下一轮迭代。** 先做一个真实用户能走完的小流程，用用户反馈决定下一步改什么。拿不到用户反馈时说明这一点。雷军回忆，早期 MIUI 从 100 个用户开始，根据反馈每周迭代。 [小米十周年演讲](https://i.ifeng.com/c/7yrMJlraCqe)
- **亲自跑完关键体验。** 条件允许时，在设计或验收前从实际入口完成任务。记录具体摩擦，比如不必要的页面切换，或遇到错误后用户无法继续。雷军自述三年试驾了 170 多辆车，并记录试驾笔记。 [2024 年度演讲](https://www.eet-china.com/news/202407226412.html)
- **集中精力改善用户能感受到的体验。** 写清最值得改善的是哪个用户任务，以及用户会在哪一步感受到变化。这是雷军所说「专注、极致、口碑、快」里「专注」的具体用法。 [《小米创业思考》节选](https://www.thepaper.cn/newsDetail_forward_20026054)
- **按撤回成本决定推进速度。** 小而可逆的改动可以快试快验。涉及公开 API、数据模型或主导航时，先评估下游影响和迁移成本。雷军用早期红米命名的复盘说明，仓促的品牌定位决定会让用户混淆。 [红米命名复盘](https://www.thepaper.cn/newsDetail_forward_20026054)

### Steve Jobs

- **从用户最后得到的体验倒推技术。** 先写清用户最终能完成什么，再选择技术。Jobs 在 1997 年 WWDC 用 LaserWriter 举例，说明多项打印技术怎样组合起来，让用户能完成桌面出版。 [WWDC 录像与逐字稿](https://allaboutstevejobs.com/videos/keynotes/wwdc_1997_closing_chat)
- **把聚焦落实成取舍。** 明确本轮要优先完成哪个用户任务，以及哪些有价值的想法先延后。Jobs 在同场谈到 OpenDoc 时，用这个例子说明聚焦需要说不。 [WWDC 录像与逐字稿](https://allaboutstevejobs.com/videos/keynotes/wwdc_1997_closing_chat)
- **从解决过类似问题的领域借经验。** Jobs 回忆，书法课学到的东西用于初代 Macintosh 的字体排版。设计界面时，可以从出版、地图和座舱等领域找做法，再按实际任务调整。 [Steve Jobs Archive 收录的斯坦福演讲](https://book.stevejobsarchive.com/)

### Jony Ive

- **用简洁表达用途。** 让主要操作和必要状态易于发现，逐项看视觉元素在传达什么、帮助用户做什么。Ive 把简洁描述为清楚表达事物的本质与用途。 [Stripe 访谈](https://stripe.com/sessions/2025/a-conversation-with-sir-jony-ive)
- **打磨高频但容易忽略的小动作。** 亲自检查复制、焦点返回和表单纠错等重复操作。Ive 用线缆包装上帮助用户拆开的一个小拉片，说明细节里的用心。 [Stripe 访谈](https://stripe.com/sessions/2025/a-conversation-with-sir-jony-ive)
- **用文字和原型分别验证设计。** 写清问题和静态图无法表达的行为，需要时用可操作的原型检查布局过渡、触控或键盘操作。Ive 用画杯子的例子解释，静态草图传达不了重量、材质和温度等属性。 [Ive 本人访谈](https://www.mckinsey.com/capabilities/tech-and-ai/our-insights/the-creative-process-is-fabulously-unpredictable-a-great-idea-cannot-be-predicted)

### Dan Abramov

- **先设计交互，再决定 API。** 说明用户输入、清空、等待或遇到旧结果时会看到什么，再倒推组件和 API 契约。Abramov 把这写成他对 React 团队设计方式的观察。 [React 团队原则](https://overreacted.io/what-are-the-react-team-principles/#ui-before-api)
- **建立能预测行为的心智模型。** 列出每一步看到哪些值，以及状态、渲染、effect 和异步回调发生的顺序。Abramov 先用计数器演示每次渲染捕获自己的 props 和 state，再解释为什么回调可能读到旧值。 [useEffect 指南](https://overreacted.io/a-complete-guide-to-useeffect/#each-render-has-its-own-props-and-state)
- **用下一次可能的需求变化检验抽象。** 合并代码前，解释调用方是否应该一起变，以及其中一个需要独立行为时会怎样。Abramov 复盘过一次图形编辑器重构，共用抽象让后续形状特有的需求更难改，他也反思了自己没有先和原作者沟通。 [Goodbye, Clean Code](https://overreacted.io/goodbye-clean-code/) · [The WET Codebase](https://www.deconstructconf.com/2019/dan-abramov-the-wet-codebase)
- **看复杂度由谁承担。** 共享层能解决反复出现的协调问题，并让调用方更易理解和修改时，再把复杂度集中进去。Abramov 观察到 React 团队有时愿意让框架承担内部复杂度，以简化产品代码。 [React 团队原则](https://overreacted.io/what-are-the-react-team-principles/)
- **把延迟、缓存和导航视为交互的一部分。** 检查慢网、离开再返回和重复操作时，状态和反馈如何变化。Abramov 用点赞后切走再回来，以及切换标签时搜索框应保留内容来说明这个问题。 [The Elements of UI Engineering](https://overreacted.io/the-elements-of-ui-engineering/)
