import {
  getSwiftUIPalette,
  SWIFT_UI_SPACING_EXTRA_SMALL,
  SWIFT_UI_SPACING_SMALL,
  SWIFT_UI_TEXT_PRIMARY,
  SWIFT_UI_TEXT_TERTIARY,
  SwiftUIComponentConfig
} from '@kaworunagisa_hhl/theme'

@Component
export struct SwiftUISectionHeader {
  @Prop config: SwiftUIComponentConfig = new SwiftUIComponentConfig()
  @Prop title: ResourceStr = ''
  @Prop detail: ResourceStr = ''
  @Prop icon: ResourceStr = ''
  @Prop color: ResourceColor = getSwiftUIPalette().primary
  @Prop componentWidth: Length = '100%'
  @Prop componentHeight: Length = 'auto'
  @Prop titleFontSize: number = 15
  @Prop detailFontSize: number = 12
  @Prop spacing: number = SWIFT_UI_SPACING_SMALL

  private resolvedColor(): ResourceColor {
    return this.config.color === undefined ? this.color : this.config.color
  }

  private resolvedWidth(): Length {
    return this.config.width === undefined ? this.componentWidth : this.config.width
  }

  private resolvedHeight(): Length {
    return this.config.height === undefined ? this.componentHeight : this.config.height
  }

  private resolvedTitleFontSize(): number {
    return this.config.titleFontSize === undefined ? this.titleFontSize : this.config.titleFontSize
  }

  private resolvedDetailFontSize(): number {
    return this.config.subtitleFontSize === undefined ? this.detailFontSize : this.config.subtitleFontSize
  }

  private resolvedSpacing(): number {
    return this.config.spacing === undefined ? this.spacing : this.config.spacing
  }

  build() {
    Row({ space: this.resolvedSpacing() }) {
      if (this.icon !== '') {
        Text(this.icon)
          .fontSize(this.resolvedTitleFontSize())
          .fontWeight(FontWeight.Bold)
          .fontColor(this.resolvedColor())
      }

      Column({ space: SWIFT_UI_SPACING_EXTRA_SMALL }) {
        Text(this.title)
          .fontSize(this.resolvedTitleFontSize())
          .fontWeight(FontWeight.Bold)
          .fontColor(SWIFT_UI_TEXT_PRIMARY)
          .width('100%')

        if (this.detail !== '') {
          Text(this.detail)
            .fontSize(this.resolvedDetailFontSize())
            .fontColor(SWIFT_UI_TEXT_TERTIARY)
            .width('100%')
        }
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width(this.resolvedWidth())
    .height(this.resolvedHeight())
    .alignItems(VerticalAlign.Top)
  }
}
