1. 对于node >= 17.0版本，启动项目时报错：

   >  opensslErrorStack: [ 'error:03000086:digital envelope routines::initialization error' ],
   >   library: 'digital envelope routines',
   >   reason: 'unsupported',
   >   code: 'ERR_OSSL_EVP_UNSUPPORTED'

​		在不改变node版本情况下，windows在package.json里面"script"配置`set NODE_OPTIONS=--openssl-legacy-provider`，linux下则为：`export NODE_OPTIONS=--openssl-legacy-provider`例如：

```json
"scripts": {
    "start": "set NODE_OPTIONS=--openssl-legacy-provider && vue-cli-service serve"
}
```

则可以解决。