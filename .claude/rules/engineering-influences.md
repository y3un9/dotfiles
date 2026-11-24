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
