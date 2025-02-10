import { webview } from '@kit.ArkWeb'

@Entry
@Component
struct Index {
  controller: webview.WebviewController = new webview.WebviewController()

  build() {
    Column() {
      Web({ src: "https://github.com/liriliri/eruda", controller: this.controller })
    }
  }
}