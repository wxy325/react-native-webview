import { NativeModules } from 'react-native'
import WebView from './lib/WebView';

const warmupWkWebview = () => {
    const vm = NativeModules.RNCCDWebViewManager;
    if (vm.warmupWkWebView) {
      vm.warmupWkWebView();
    }
}

export { WebView, warmupWkWebview };
export default WebView;
