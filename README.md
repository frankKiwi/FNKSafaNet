# FNKSafaNet

网络请求安全处理,防止抓包

1.AFSecurity 是证书校验 SSL Pinning


2.FNKSafeNetKit

Hook NSURLSession 

设置connectionProxyDictionary为空.
防止DNS劫持

使用:

[NSURLSession disableHttpProxy];




