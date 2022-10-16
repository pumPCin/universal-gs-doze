# Universal Galaxy Store Doze

---
## Overview
- Patches Galaxy Store app and its background processes to be able to use battery optimization
- Support API 23 or later
- Support Magisk Live or Custom Recovery installations

---

## Troubleshootings
- Command-line for check optimization (with add-on installed):
```
> su
> gsc
```
- Command-line for check optimization (in general):   
There's a line written `Whitelist (except idle) system apps:` and if `com.sec.android.app.samsungapps` line does not exist it means Galaxy Store is optimized).
```
> su
> dumpsys deviceidle
```

---
## Credits
- [@topjohnwu](https://github.com/topjohnwu) / Magisk - Magisk Module Template
- [@JumbomanXDA](https://github.com/JumbomanXDA) / Custom installation script

---
## Extras
- Source Code: [GitHub](https://github.com/pumPCin/universal-gs-doze)
