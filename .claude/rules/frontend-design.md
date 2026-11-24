# Frontend Design / 前端设计

## English

### Scope and responsive layouts

- Apply when designing or changing a web interface. Check the project's design system, components, responsive breakpoints, and browser support targets first. Follow the project's conventions where they exist.
- Use the fallback breakpoints below only when the project has no breakpoint policy. Measure the CSS viewport width, and use the device names as layout labels.

| Layout | CSS viewport width |
|---|---|
| Mobile | `< 768px` |
| Tablet | `768px ≤ width < 1024px` |
| Desktop | `≥ 1024px` |

- Start with the mobile layout. Design, implement, and check the affected interface in all three layouts. Keep the main task usable in each layout. Check portrait, landscape, and widths just below and at each breakpoint. Add wider layouts with `min-width` when using the fallback breakpoints.

### Browser compatibility and verification

- Cover Safari on iOS, iPadOS, and macOS, Chrome on Android, and any other browsers required by the project. Check CSS and Web API support against the project's supported browser and OS versions. Use feature detection and provide a usable fallback where support varies.
- For the affected flows, check safe areas, browser chrome and viewport sizing, the on-screen keyboard, scrolling, and touch. Make essential actions available without hover.
- Exercise the key flows on representative viewports and target browsers. Use real devices where available for platform-specific behaviour, and state which checks ran on real devices, which used emulation, and which are still unverified.

### Design references and interface clarity

- Consult current official guidance when designing or revising visuals, layouts, interactions, motion, and accessibility. Prefer patterns that fit the task and the project's visual and interaction conventions.
  - Within the project's conventions, prefer Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) and [Design Resources](https://developer.apple.com/design/resources/) as references for the full design system.
    - **Visual design and design language.** Study composition, grids, visual hierarchy, [typography](https://developer.apple.com/design/human-interface-guidelines/typography), [color](https://developer.apple.com/design/human-interface-guidelines/color), icons, imagery, and [materials](https://developer.apple.com/design/human-interface-guidelines/materials). Choose a coherent treatment across screens.
    - **Components and patterns.** Study how components, their states, and recurring patterns work together, including navigation, lists and detail views, forms, overlays, and feedback. Choose patterns that fit the task, platform, and accessibility needs.
    - **Design tokens.** Translate the visual decisions into the project's semantic tokens for text, surfaces, actions, and status, along with shared scales for typography, spacing, corner radii, elevation, and motion where needed. Reuse existing tokens and define missing values in the project's shared theme or token source.
    - **iOS, iPadOS, and macOS** for everyday layouts, navigation, interactions, and accessibility.
    - [**Apple Watch (watchOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-watchos) for glanceable status and quick actions that take one or two steps.
    - [**CarPlay**](https://developer.apple.com/design/human-interface-guidelines/carplay) for easy-to-scan information and short interactions in control interfaces, alongside the cockpit examples below.
    - [**Apple TV (tvOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-tvos) for readability at a distance, clearly visible focus, and predictable directional navigation.
    - [**Apple Vision Pro (visionOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-visionos) for spatial hierarchy, comfortable motion, and choosing the level of immersion that suits the task.
  - Google [Android Design](https://developer.android.com/design/ui/mobile) and [Material Design](https://m3.material.io/).
  - Microsoft [Fluent Design](https://fluent2.microsoft.design/) and [Fluent UI](https://fluent2.microsoft.design/components/web/react).
- For dashboards and control interfaces, use these cockpit designs as case studies where relevant.
  - [Tesla Model 3 touchscreen](https://www.tesla.com/ownersmanual/model3/en_gb/GUID-518C51C1-E9AC-4A68-AE12-07F4FF8C881E.html) for keeping key status visible, making frequent actions easy to reach, and opening temporary controls in context.
  - [firefly aster OS (紫菀)](https://www.firefly.world/news/20261109001) for adapting the home screen to the current situation and using coordinated feedback to make state changes clear.
- Make the current task and primary action easy to identify. Use clear labels and show what the user can do next in loading, empty, error, and success states where relevant.
- Check touch targets, keyboard navigation and visible focus, screen reader labels and status announcements, contrast, and reduced motion. Use motion when it helps explain a change or guides attention.

## 简体中文

### 适用范围与响应式布局

- 设计或修改网页界面时适用。先查项目的设计系统、组件、响应式断点和浏览器支持范围。项目已有约定时，跟随项目。
- 只有项目没规定断点时，才采用下表。按 CSS 视口宽度判断，设备名称用作布局标签。

| 布局 | CSS 视口宽度 |
|---|---|
| 移动端 | `< 768px` |
| 平板端 | `768px ≤ 宽度 < 1024px` |
| 桌面端 | `≥ 1024px` |

- 从移动端布局开始。为三档布局分别设计、实现和检查受影响的界面，确保每档都能完成主要任务。检查横竖屏，以及略低于和恰好达到断点的宽度。使用默认断点时，通过 `min-width` 扩展到更宽的布局。

### 浏览器兼容与验证

- 覆盖 iOS、iPadOS 和 macOS 的 Safari、Android 的 Chrome，以及项目要求的其他浏览器。对照项目支持的浏览器和系统版本检查 CSS 属性和 Web API。支持程度不同时，使用能力检测并提供可用的降级方案。
- 针对受影响的流程，检查安全区、浏览器工具栏和视口尺寸、软键盘、滚动及触控。关键操作在没有悬停时也应可用。
- 在代表性视口和目标浏览器上跑关键流程。有实机时，用实机检查平台特有行为。报告哪些是实机验证、哪些使用了模拟、哪些仍待验证。

### 设计参考与界面清晰度

- 新建或修改视觉、布局、交互、动效和无障碍设计时，查阅当前官方指南。优先采用符合用户任务和项目既有视觉及交互约定的做法。
  - 在项目既有约定内，优先把 Apple 的 [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) 和 [Design Resources](https://developer.apple.com/design/resources/) 作为整套设计体系的参考。
    - **平面视觉与设计语言。** 研究构图、网格、视觉层级、[字体排版](https://developer.apple.com/design/human-interface-guidelines/typography)、[色彩](https://developer.apple.com/design/human-interface-guidelines/color)、图标、图像和[材质](https://developer.apple.com/design/human-interface-guidelines/materials)，让各个页面的视觉处理一致。
    - **组件与设计模式。** 看组件、组件状态和常用模式如何配合，包括导航、列表与详情、表单、浮层和反馈。按任务、平台和无障碍需求选择合适的模式。
    - **设计 token。** 把视觉决策映射到项目的语义 token，例如文字、背景层、操作和状态。按需复用字体、间距、圆角、层级和动效的共用尺度。优先复用已有 token，缺少的值放到项目统一的主题或 token 来源中。
    - **iOS、iPadOS 和 macOS**：参考日常界面的布局、导航、交互和无障碍设计。
    - [**Apple Watch（watchOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-watchos)：一眼看懂状态，用一两步完成常用操作。
    - [**CarPlay**](https://developer.apple.com/design/human-interface-guidelines/carplay)：参考易扫读的信息和步骤少的交互，可与下方车机案例一起用于控制界面。
    - [**Apple TV（tvOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-tvos)：远距离可读、焦点清晰、方向键导航可预期。
    - [**Apple Vision Pro（visionOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-visionos)：参考空间层次、舒适的动效，以及按任务选择合适的沉浸程度。
  - Google 的 [Android Design](https://developer.android.com/design/ui/mobile) 和 [Material Design](https://m3.material.io/)。
  - Microsoft 的 [Fluent Design](https://fluent2.microsoft.design/) 和 [Fluent UI](https://fluent2.microsoft.design/components/web/react)。
- 设计仪表盘和控制界面时，可以按场景参考以下车机案例。
  - [Tesla Model 3 触屏](https://www.tesla.com/ownersmanual/model3/en_gb/GUID-518C51C1-E9AC-4A68-AE12-07F4FF8C881E.html) 的关键状态常驻、高频操作易达，以及在当前界面展开临时控件。
  - [萤火虫 firefly aster OS（紫菀）](https://www.firefly.world/news/20261109001) 的场景化首页，以及用协调一致的交互反馈说明状态变化。
- 让用户容易辨认当前任务和主要操作。使用清楚的标签，在适用的加载、空白、错误和成功状态下说明接下来能做什么。
- 检查触控目标大小、键盘导航和可见焦点、屏幕阅读器标签和状态播报、对比度及减少动态效果设置。用动效说明变化或引导注意力。
