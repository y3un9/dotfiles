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
- Give the main task priority on narrow screens. On wider screens, show related context alongside it when that helps the task, such as a list and its detail view or a summary and its trend.

### Reuse components, styles, and page patterns

- Before proposing a UI change, check the project's design rules and the closest existing pages. Identify the shared components, layout and interaction patterns, style classes or utilities, and design tokens those pages already use.
- Reuse an existing component or style directly when it meets the requirement. When a similar page owns its implementation locally, follow its layout or interaction pattern and compose it from existing building blocks. Keep page-specific differences local when sharing them would add unnecessary complexity.
- If there is a gap, compare extending the shared component or style with a local implementation. Expand shared code when the difference fits its responsibility and existing callers can keep their expected behaviour. Check affected existing pages for appearance, interaction states, and accessibility. If a new implementation is needed, reuse the compatible primitives, styles, and tokens, and explain the gap in the plan.

### Browser compatibility and verification

- Cover Safari on iOS, iPadOS, and macOS, Chrome on Android, and any other browsers required by the project. Check CSS and Web API support against the project's supported browser and OS versions. Use feature detection and provide a usable fallback where support varies.
- For the affected flows, check safe areas, browser chrome and viewport sizing, the on-screen keyboard, scrolling, and touch. Make essential actions available without hover.
- Exercise the key flows on representative viewports and target browsers. Use real devices where available for platform-specific behaviour, and state which checks ran on real devices, which used emulation, and which are still unverified.

### Design references and interface clarity

- Consult current official guidance when designing or revising visuals, layouts, interactions, motion, and accessibility. Prefer patterns that fit the task and the project's visual and interaction conventions.
  - Within the project's conventions, prefer Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) and [Design Resources](https://developer.apple.com/design/resources/) as references for the full design system.
    - **Visual design and design language.** Study composition, grids, visual hierarchy, [typography](https://developer.apple.com/design/human-interface-guidelines/typography), [color](https://developer.apple.com/design/human-interface-guidelines/color), icons, imagery, and [materials](https://developer.apple.com/design/human-interface-guidelines/materials). Choose a coherent treatment across screens.
    - **Components and patterns.** Study how components, their states, and recurring patterns work together, including navigation, lists and detail views, forms, overlays, and feedback. Choose patterns that fit the task, platform, and accessibility needs.
    - **iOS, iPadOS, and macOS** for everyday layouts, navigation, interactions, and accessibility.
    - [**Apple Watch (watchOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-watchos) for glanceable status and quick actions that take one or two steps.
    - [**CarPlay**](https://developer.apple.com/design/human-interface-guidelines/carplay) for easy-to-scan information and short interactions in control interfaces.
    - [**Apple TV (tvOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-tvos) for readability at a distance, clearly visible focus, and predictable directional navigation.
    - [**Apple Vision Pro (visionOS)**](https://developer.apple.com/design/human-interface-guidelines/designing-for-visionos) for spatial hierarchy, comfortable motion, and choosing the level of immersion that suits the task.
  - Google [Android Design](https://developer.android.com/design/ui/mobile) and [Material Design](https://m3.material.io/).
  - Microsoft [Fluent Design](https://fluent2.microsoft.design/) and [Fluent UI](https://fluent2.microsoft.design/components/web/react).
- For dashboards, monitoring views, and control interfaces, keep key status in a consistent, easy-to-scan location. Group related information with spacing, and keep readings legible over changing backgrounds such as maps and video.
- Keep frequent actions easy to reach and separate high-impact commands from areas used for frequent clicks or taps. Show when a command has been sent, is running, succeeds, or fails. Flag stale data and lost connections when they affect the operator's view.
- Consult the [app design cases](#app-design-cases) when a relevant app or interface can inform the task.
- Make the current task and primary action easy to identify. Use clear labels and show what the user can do next in loading, empty, error, and success states where relevant.
- Preserve the user's selection, browsing position, or task progress when opening details or secondary actions and when returning to the main view.
- Where users both look for known items and explore unfamiliar ones, offer direct search and a browsable structure such as categories, collections, or recommendations.
- Translate visual roles such as primary and secondary text, surfaces, primary actions, selection, dividers, overlays, and status into the project's semantic design tokens. Reuse shared scales for typography, spacing, corner radii, elevation, and motion. Define missing tokens in the project's shared theme or token source when needed.
- Check touch targets, keyboard navigation and visible focus, screen reader labels and status announcements, contrast, and reduced motion. Use motion when it helps explain a change or guides attention.

### App design cases

Pick cases that match the user's task, screen size, and input method. Each entry records a pattern supported by public material and a suggested use. The entries are based on documentation, published screens, and product descriptions. Device testing and exact visual tokens are unverified.

Add new examples under the closest section. Record the app and platform, the pattern, where it helps, and a source the reader can check.

#### Maps, live status, and control interfaces

| App and platform | Documented pattern | Where to apply it |
|---|---|---|
| Apple Maps · iPhone and iPad | Place cards make location details and directions available from the map. | Venue maps and location directories where details need to stay anchored to a place. [iPhone place cards](https://support.apple.com/en-mo/guide/iphone/iph8c9c2528b/ios) · [iPad Maps](https://support.apple.com/en-gb/guide/ipad/ipadd541a6af/ipados) |
| Apple Find My · iPhone and iPad | Select a device, see its location, and request a sound or directions. An offline sound request is shown as pending. | Asset tracking and remote commands with explicit pending states. [iPhone](https://support.apple.com/guide/iphone/locate-a-device-iph09b087eda/ios) · [iPad](https://support.apple.com/en-au/guide/ipad/ipad445ff36d/ipados) |
| Amap · mobile | Routes and navigation are presented alongside trip-related services such as parking and charging. | Trip planning, bookings, and deliveries. Surface useful actions at the stage where they matter. [Product overview](https://mobile.amap.com/cn/index) |
| Google Maps · desktop web | Search results link map markers to place details. Places can be saved in lists. | Comparing and shortlisting locations or other geographically anchored options. [Search](https://support.google.com/maps/answer/3092445?hl=en) · [Saved places](https://support.google.com/maps/answer/3184808?hl=en) |
| Apple Weather · iPhone, iPad, and Mac | iPhone puts current conditions above hourly and daily forecasts. iPad can show forecasts beside maps. Mac offers a weather map view. | Dashboards that lead with a summary on narrow screens and show trends or geographic detail alongside it on wider screens. [iPhone](https://support.apple.com/guide/iphone/check-the-weather-iph1ac0b35f/ios) · [iPad](https://support.apple.com/en-bh/guide/ipad/ipadcb13eaca/ipados) · [Mac](https://support.apple.com/en-is/guide/weather-mac/apdwb257a5d9/mac) |
| Tesla Model 3 touchscreen | Vehicle status remains visible, the bottom bar holds frequent actions, and apps or temporary controls open over the map. | Dashboards that keep status and shortcuts accessible while operators use secondary controls. [Touchscreen guide](https://www.tesla.com/ownersmanual/model3/en_gb/GUID-518C51C1-E9AC-4A68-AE12-07F4FF8C881E.html) |
| firefly aster OS (紫菀) · cockpit | The home screen adapts to the situation. Visual, sound, and haptic feedback work together. | Context-aware home screens and coordinated feedback that makes state changes clear. [Design case](https://www.firefly.world/news/20261109001) |
| SpaceX Crew Dragon · crew displays | Readings remain legible over a live camera feed. Critical commands are placed away from high-activity areas. | Dense monitoring and control views where readings must stay clear and critical actions need deliberate placement. [Display team notes](https://www.reddit.com/r/spacex/comments/ncj4vz/we_are_the_spacex_software_team_ask_us_anything/) · [Public simulator](https://iss-sim.spacex.com/) |

#### Content discovery and playback

| App and platform | Documented pattern | Where to apply it |
|---|---|---|
| 小宇宙 · mobile | Daily discovery helps listeners choose a show. Listeners can mark highlights and discuss moments in an episode. | Audio, lessons, or recordings where a comment or highlight should point to a time in the content. [Product listing](https://apps.apple.com/cn/app/id1488894313) |
| YouTube · desktop web | Search and side navigation support targeted lookup and ongoing browsing. Results can be filtered by video, channel, or playlist. | Large media libraries with both specific queries and open-ended browsing. [Desktop guide](https://support.google.com/youtube/answer/2398242?co=GENIE.Platform%3DDesktop&hl=en) |
| 少数派 (SSPAI) · web | Editorial series and the Matrix community give readers different paths into the content. | Knowledge bases and communities with themed series and a separate path to community contributions. [Series](https://sspai.com/series) · [Matrix](https://sspai.com/post/65521) |
| Apple App Store · iPhone Today | Featured artwork, editorial stories, and collections give selected items a clear visual hierarchy. | Curated discovery pages and feature highlights. [Today](https://apps.apple.com/us/iphone/today) |
| Apple Podcasts · iPhone | A MiniPlayer preserves basic controls and expands into Now Playing, with access to the queue. | Media playback and long-running tasks that remain accessible when a user leaves the detail view. [Playback guide](https://support.apple.com/guide/iphone/play-podcasts-on-iphone-iph3a22707a5/ios) |
| Apple TV app · tvOS | A sidebar switches sections, horizontal rows group content, and Continue Watching resumes progress. | Large-screen media browsing with directional focus and a clear way to resume. [tvOS app guide](https://support.apple.com/en-lamr/guide/tv/atvb7d7bec9f/tvos) |

#### Communication, workspaces, and personal tools

| App and platform | Documented pattern | Where to apply it |
|---|---|---|
| Weixin / WeChat · mobile | Conversation supports text, voice, images, and location. Official Accounts and Mini Programs provide entry points to content and services. | Team chat and support tools that keep conversation actions close to the thread. [Product listing](https://apps.apple.com/us/app/wechat/id414478124) |
| GitHub · desktop web | Pull request changes can be reviewed by file, commented on inline, and marked as viewed. | Reviews and change approvals with feedback attached to the affected line or item. [Review guide with screenshots](https://docs.github.com/en/pull-requests/how-tos/review-pull-requests/reviewing-proposed-changes-in-a-pull-request) |
| ChatGPT · web | Sidebar search can retrieve prior conversations, projects, and available files. | Workspaces that let users recover previous context while working on the current task. [Sidebar search](https://help.openai.com/en/articles/10056348-finding-your-chats-projects-and-files-in-chatgpt) |
| Apple Wallet · iPhone | Tickets, cards, and keys are actionable items. Supported passes can be opened from a notification. | Boarding passes, admission tickets, and coupons where the relevant credential needs to be ready at use time. [Wallet guide](https://support.apple.com/en-gb/guide/iphone/iphe7aa3336/ios) |
| Apple Photos · iPhone | Collections offer a path into the library, and users can pin and reorder frequently used collections. | File and media libraries that combine default organisation with personal shortcuts. [Collections guide](https://support.apple.com/en-ca/guide/iphone/iph4f36c4148/ios) |
| Apple Settings · iPhone | Settings are grouped by topic, with search at the top that can open the relevant setting. | Administration and preferences screens that need both browsable categories and direct lookup. [Settings guide with screenshots](https://support.apple.com/guide/iphone/find-settings-iph079e1fe9d/ios) |

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
- 窄屏优先展示主要任务。宽屏上，如果同时看到更多上下文能帮助用户完成任务，可以并排展示列表与详情、概览与趋势等相关内容。

### 复用组件、样式和页面模式

- 提出界面改动前，先查项目的设计规则和最接近的已有页面。找出这些页面已经使用的共享组件、布局和交互模式、样式类或工具类，以及设计 token。
- 现有组件或样式满足要求时，直接复用。如果类似页面的实现只在该页面内部使用，可以参照它的布局或交互，并用现有基础组件组合。共享会带来额外复杂度时，就把页面特有的差异留在本地。
- 现有实现有缺口时，比较扩展共享组件或样式与在当前页面实现的利弊。差异符合共享代码的职责，且能保留现有调用方预期的行为时，再扩展共享代码。检查受影响旧页面的外观、交互状态和无障碍。确实需要新建时，复用兼容的基础组件、样式和 token，并在计划里说明缺口。

### 浏览器兼容与验证

- 覆盖 iOS、iPadOS 和 macOS 的 Safari、Android 的 Chrome，以及项目要求的其他浏览器。对照项目支持的浏览器和系统版本检查 CSS 属性和 Web API。支持程度不同时，使用能力检测并提供可用的降级方案。
- 针对受影响的流程，检查安全区、浏览器工具栏和视口尺寸、软键盘、滚动及触控。关键操作在没有悬停时也应可用。
- 在代表性视口和目标浏览器上跑关键流程。有实机时，用实机检查平台特有行为。报告哪些是实机验证、哪些使用了模拟、哪些仍待验证。

### 设计参考与界面清晰度

- 新建或修改视觉、布局、交互、动效和无障碍设计时，查阅当前官方指南。优先采用符合用户任务和项目既有视觉及交互约定的做法。
  - 在项目既有约定内，优先把 Apple 的 [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) 和 [Design Resources](https://developer.apple.com/design/resources/) 作为整套设计体系的参考。
    - **平面视觉与设计语言。** 研究构图、网格、视觉层级、[字体排版](https://developer.apple.com/design/human-interface-guidelines/typography)、[色彩](https://developer.apple.com/design/human-interface-guidelines/color)、图标、图像和[材质](https://developer.apple.com/design/human-interface-guidelines/materials)，让各个页面的视觉处理一致。
    - **组件与设计模式。** 看组件、组件状态和常用模式如何配合，包括导航、列表与详情、表单、浮层和反馈。按任务、平台和无障碍需求选择合适的模式。
    - **iOS、iPadOS 和 macOS**：参考日常界面的布局、导航、交互和无障碍设计。
    - [**Apple Watch（watchOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-watchos)：一眼看懂状态，用一两步完成常用操作。
    - [**CarPlay**](https://developer.apple.com/design/human-interface-guidelines/carplay)：为控制界面参考易扫读的信息和步骤少的交互。
    - [**Apple TV（tvOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-tvos)：远距离可读、焦点清晰、方向键导航可预期。
    - [**Apple Vision Pro（visionOS）**](https://developer.apple.com/design/human-interface-guidelines/designing-for-visionos)：参考空间层次、舒适的动效，以及按任务选择合适的沉浸程度。
  - Google 的 [Android Design](https://developer.android.com/design/ui/mobile) 和 [Material Design](https://m3.material.io/)。
  - Microsoft 的 [Fluent Design](https://fluent2.microsoft.design/) 和 [Fluent UI](https://fluent2.microsoft.design/components/web/react)。
- 设计仪表盘、监控页和控制台时，把关键状态放在固定、容易扫读的位置。用留白组织相关信息，在地图或视频等不断变化的背景上也要让读数清楚可辨。
- 让高频操作易达，把影响大的指令与高频点击或触控区域拉开距离。清楚显示指令已发出、执行中、成功或失败。数据过期或连接中断影响当前视图时，明确提示。
- 有相关 App 或界面可以借鉴时，按场景查阅[应用设计案例](#应用设计案例)。
- 让用户容易辨认当前任务和主要操作。使用清楚的标签，在适用的加载、空白、错误和成功状态下说明接下来能做什么。
- 打开详情或次要操作，以及返回主界面时，保留用户的选中项、浏览位置或任务进度。
- 用户既会查找已知目标、也会探索未知内容时，同时提供直接搜索和可浏览的结构，例如分类、合集或推荐。
- 把主次文字、背景层、主要操作、选中状态、分隔线、浮层和状态等视觉角色映射到项目的语义设计 token。复用字体、间距、圆角、层级和动效的共用尺度。需要新增时，在项目统一的主题或 token 来源中定义。
- 检查触控目标大小、键盘导航和可见焦点、屏幕阅读器标签和状态播报、对比度及减少动态效果设置。用动效说明变化或引导注意力。

### 应用设计案例

按用户任务、屏幕大小和输入方式选择案例。每项写明公开资料支持的做法和建议借鉴的场景。资料来自官方文档、公开界面和产品说明，实机体验及精确设计 token 尚未验证。

新增案例时，放到最相关的小节，写明 App 和平台、设计做法、适用场景及可复查的来源。

#### 地图、实时状态与控制界面

| App 和平台 | 资料支持的做法 | 可借鉴场景 |
|---|---|---|
| Apple Maps · iPhone 与 iPad | 用地点卡片从地图查看地点详情和路线。 | 场馆地图和地点目录，让详情保留对应的地理上下文。 [iPhone 地点卡片](https://support.apple.com/en-mo/guide/iphone/iph8c9c2528b/ios) · [iPad 地图](https://support.apple.com/en-gb/guide/ipad/ipadd541a6af/ipados) |
| Apple Find My · iPhone 与 iPad | 选中设备、查看位置，再请求播放声音或导航。设备离线时，播放声音显示为待执行。 | 资产追踪和远程指令，明确呈现等待状态。 [iPhone](https://support.apple.com/guide/iphone/locate-a-device-iph09b087eda/ios) · [iPad](https://support.apple.com/en-au/guide/ipad/ipad445ff36d/ipados) |
| 高德地图 · 移动端 | 围绕路线与导航提供停车、充电等相关出行服务。 | 出行规划、预约和配送，在当前阶段提供有用的下一步操作。 [产品介绍](https://mobile.amap.com/cn/index) |
| Google Maps · 桌面网页 | 搜索结果将地图标记与地点详情关联，地点可保存到列表。 | 比较位置并保留候选项，适用于有地理上下文的目录。 [搜索](https://support.google.com/maps/answer/3092445?hl=en) · [收藏地点](https://support.google.com/maps/answer/3184808?hl=en) |
| Apple Weather · iPhone、iPad 与 Mac | iPhone 在逐小时和多日预报上方展示当前天气。iPad 可并排展示预报和地图。Mac 提供天气地图视图。 | 数据看板，窄屏先展示概览，宽屏再并排呈现趋势或地理信息。 [iPhone](https://support.apple.com/guide/iphone/check-the-weather-iph1ac0b35f/ios) · [iPad](https://support.apple.com/en-bh/guide/ipad/ipadcb13eaca/ipados) · [Mac](https://support.apple.com/en-is/guide/weather-mac/apdwb257a5d9/mac) |
| Tesla Model 3 · 中控触屏 | 车辆状态常驻，底栏提供高频操作，应用或临时控件可在地图上方打开。 | 使用次要功能时仍需看见状态和快捷入口的仪表盘。 [触屏图解](https://www.tesla.com/ownersmanual/model3/en_gb/GUID-518C51C1-E9AC-4A68-AE12-07F4FF8C881E.html) |
| 萤火虫 firefly aster OS（紫菀）· 座舱 | 首页随场景调整，视觉、声音和触觉反馈相互配合。 | 场景化首页，以及需要组合反馈来说明状态变化的界面。 [设计案例](https://www.firefly.world/news/20261109001) |
| SpaceX Crew Dragon · 船员显示界面 | 实时摄像画面上的读数保持清晰，关键指令与高频操作区分开。 | 高信息密度的监控和控制界面，让读数易辨认、关键指令能有意触发。 [显示团队说明](https://www.reddit.com/r/spacex/comments/ncj4vz/we_are_the_spacex_software_team_ask_us_anything/) · [公开模拟器](https://iss-sim.spacex.com/) |

#### 内容发现与播放

| App 和平台 | 资料支持的做法 | 可借鉴场景 |
|---|---|---|
| 小宇宙 · 移动端 | 每日发现帮助选节目，听众可以标记高光片段并围绕节目内容展开讨论。 | 播客、课程和录音，让评论或高光标记指向具体时间点。 [产品页](https://apps.apple.com/cn/app/id1488894313) |
| YouTube · 桌面网页 | 搜索和侧边导航支持主动查找与持续浏览。结果可按视频、频道或播放列表筛选。 | 同时支持明确查询和开放式探索的大型媒体库。 [桌面指南](https://support.google.com/youtube/answer/2398242?co=GENIE.Platform%3DDesktop&hl=en) |
| 少数派（SSPAI）· 网页 | 编辑栏目和 Matrix 社区提供不同的内容入口。 | 知识库和内容社区，让读者按专题持续阅读，也能探索社区投稿。 [栏目](https://sspai.com/series) · [Matrix](https://sspai.com/post/65521) |
| Apple App Store · iPhone Today | 用主视觉、编辑故事和专题合集为精选内容建立视觉层级。 | 精选发现页和新功能推荐。 [Today](https://apps.apple.com/us/iphone/today) |
| Apple Podcasts · iPhone | 底部迷你播放器保留基础操作，展开播放页后可查看队列。 | 用户打开其他页面后仍需要操作的媒体播放或长任务。 [播放指南](https://support.apple.com/guide/iphone/play-podcasts-on-iphone-iph3a22707a5/ios) |
| Apple TV App · tvOS | 侧栏切换入口，横向内容行组织浏览，「继续观看」恢复进度。 | 用方向键操作的大屏媒体浏览和任务恢复。 [tvOS 指南](https://support.apple.com/en-lamr/guide/tv/atvb7d7bec9f/tvos) |

#### 沟通、工作台与个人工具

| App 和平台 | 资料支持的做法 | 可借鉴场景 |
|---|---|---|
| 微信 / WeChat · 移动端 | 会话支持文字、语音、图片和位置，公众号和小程序提供内容及服务入口。 | 团队聊天和客服工具，把会话相关操作放在对应对话里。 [产品页](https://apps.apple.com/us/app/wechat/id414478124) |
| GitHub · 桌面网页 | PR 可以逐文件审阅、行内评论和标记已查看。 | 审核和变更审批，把反馈落到具体行或变更项上。 [审阅图解](https://docs.github.com/en/pull-requests/how-tos/review-pull-requests/reviewing-proposed-changes-in-a-pull-request) |
| ChatGPT · 网页 | 侧栏搜索可找回历史会话、项目和可用文件。 | 长期工作台，让用户处理当前任务时可以找回过去的上下文。 [侧栏搜索](https://help.openai.com/en/articles/10056348-finding-your-chats-projects-and-files-in-chatgpt) |
| Apple Wallet · iPhone | 把票券、卡片和钥匙做成可操作的对象，符合条件的票券可从通知打开。 | 登机、入场和优惠券，到使用时刻即可打开相关凭证。 [钱包指南](https://support.apple.com/en-gb/guide/iphone/iphe7aa3336/ios) |
| Apple Photos · iPhone | 集合是浏览照片库的一条路径，常用集合可以固定和重排。 | 文件和媒体库，提供默认组织方式和用户自己的高频入口。 [集合指南](https://support.apple.com/en-ca/guide/iphone/iph4f36c4148/ios) |
| Apple Settings · iPhone | 设置按主题分组，顶部搜索可打开相应设置项。 | 管理后台和偏好设置，同时支持按类别找和直接搜索。 [设置图解](https://support.apple.com/guide/iphone/find-settings-iph079e1fe9d/ios) |
