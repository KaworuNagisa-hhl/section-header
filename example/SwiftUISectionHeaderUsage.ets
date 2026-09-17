import { SwiftUISectionHeader } from 'section-header'

@Component
export struct SwiftUISectionHeaderUsage {
  build() {
    SwiftUISectionHeader({
      title: 'Vitals',
      detail: 'Updated just now',
      icon: 'i',
      color: '#235595'
    })
  }
}
