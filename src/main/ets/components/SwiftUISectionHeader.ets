import {
  getSwiftUIPalette,
  SWIFT_UI_SPACING_EXTRA_SMALL,
  SWIFT_UI_SPACING_SMALL,
  SWIFT_UI_TEXT_PRIMARY,
  SWIFT_UI_TEXT_TERTIARY
} from 'theme'

@Component
export struct SwiftUISectionHeader {
  @Prop title: ResourceStr = ''
  @Prop detail: ResourceStr = ''
  @Prop icon: ResourceStr = ''
  @Prop color: ResourceColor = getSwiftUIPalette().primary
  @Prop componentWidth: Length = '100%'
  @Prop componentHeight: Length = 'auto'
  @Prop titleFontSize: number = 15
  @Prop detailFontSize: number = 12
  @Prop spacing: number = SWIFT_UI_SPACING_SMALL

  build() {
    Row({ space: this.spacing }) {
      if (this.icon !== '') {
        Text(this.icon)
          .fontSize(this.titleFontSize)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.color)
      }

      Column({ space: SWIFT_UI_SPACING_EXTRA_SMALL }) {
        Text(this.title)
          .fontSize(this.titleFontSize)
          .fontWeight(FontWeight.Bold)
          .fontColor(SWIFT_UI_TEXT_PRIMARY)
          .width('100%')

        if (this.detail !== '') {
          Text(this.detail)
            .fontSize(this.detailFontSize)
            .fontColor(SWIFT_UI_TEXT_TERTIARY)
            .width('100%')
        }
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width(this.componentWidth)
    .height(this.componentHeight)
    .alignItems(VerticalAlign.Top)
  }
}
