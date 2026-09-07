import { describe, it, expect } from '@ohos/hypium'

export default function localUnitTest() {
  describe('SwiftUISectionHeader', () => {
    it('accepts_title_detail_icon_contract', 0, () => {
      const title = '分组标题'
      const detail = '详情'
      const icon = 'H'
      expect(title.length > 0).assertTrue()
      expect(detail.length > 0).assertTrue()
      expect(icon).assertEqual('H')
    })
  })
}
