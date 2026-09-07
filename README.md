# section-header

`section-header` 是一个 OpenHarmony/HarmonyOS ArkUI like-ios 分组标题组件，适合列表分组、设置分区和卡片区块标题。默认使用紧凑的 SwiftUI 标题层级，可自定义颜色、宽高、标题字号、说明字号和左右间距。

## 实际运行效果

下面展示分组标题、说明文本和强调色状态：

![section header preview](https://cdn.jsdelivr.net/gh/KaworuNagisa-hhl/section-header@main/docs/section-header-preview.gif)

## 安装

```bash
ohpm install section-header
```

本地源码依赖：

```json5
{
  "dependencies": {
    "section-header": "file:../section-header"
  }
}
```

## 正常使用样式

```ts
import { SwiftUISectionHeader } from 'section-header'

@Component
struct RecordsSectionHeader {
  build() {
    SwiftUISectionHeader({
      title: '健康记录',
      detail: '最近同步的关键数据',
      icon: 'R',
      color: '#141414'
    })
  }
}
```

## 自定义品牌样式

```ts
SwiftUISectionHeader({
  title: '设备状态',
  detail: '在线设备和同步状态',
  icon: 'D',
  color: '#141414',
  componentWidth: '100%',
  componentHeight: 48,
  titleFontSize: 16,
  detailFontSize: 12,
  spacing: 10
})
```

## SwiftUI 风格链式配置

```ts
import { swiftUIConfig, SwiftUITone } from 'theme'

const glassStyle = swiftUIConfig()
  .withTone(SwiftUITone.SystemGray)
  .withWidth('92%')
  .withHeight('auto')
  .withRadius(8)
  .withFillColor('#E6111111')
  .withTintColor('#22FFFFFF')
  .withBorder('#33FFFFFF', 1)
  .withShadow('#33000000', 16)
  .withPadding(12)

SwiftUISectionHeader({
  config: glassStyle
})
```

`config` 是可选入口，适合复用一组 SwiftUI modifier 风格的外观配置；原有直接传参方式仍然可用，且业务可以继续通过 Builder 注入自定义内容。

## 示例目录

完整最小示例见 `example/SwiftUISectionHeaderUsage.ets`。该示例演示了分组标题、说明文本、图标和强调色，适合列表分区标题。

## API

| 参数 | 类型 | 默认值 | 说明 |
| --- | --- | --- | --- |
| `config` | `SwiftUIComponentConfig` | 空配置 | SwiftUI modifier 风格链式配置，可覆盖宽高、圆角、颜色、边框、阴影、内边距等通用外观 |
| `title` | `ResourceStr` | `''` | 分组标题 |
| `detail` | `ResourceStr` | `''` | 分组说明 |
| `icon` | `ResourceStr` | `''` | 可选图标字符 |
| `color` | `ResourceColor` | 黑色主色 | 图标和强调色 |
| `componentWidth` | `Length` | `'100%'` | 组件宽度 |
| `componentHeight` | `Length` | `'auto'` | 组件高度 |
| `titleFontSize` | `number` | `15` | 标题字号 |
| `detailFontSize` | `number` | `12` | 说明字号 |
| `spacing` | `number` | `8` | 图标与文本间距 |
