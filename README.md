
cat > README.md <<'EOF'
# ⚠️ BoxWine - Android Windows Emulator ⚠️

**🚧 Project Status: Under Active Development**  
BoxWine is in development. Features are experimental and may change. Use at your own risk.  
With scripts included, you can manage Wine prefixes, proxies, input devices (keyboard, touch, gamepad), and more.

---

## 🌐 Languages

&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-ru.md">Русский</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-ua.md">Українська</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-pt_BR.md">Português Brasileiro</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-pl.md">Polski</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-ja.md">日本語</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-zh_CN.md">简体中文</a>
&nbsp;&nbsp;| &nbsp;&nbsp;
<a href="README-id.md">Bahasa Indonesia</a>

---

## 📥 Installation

**1. Install dependencies**  

- Termux  
- Termux-X11  
- Input Bridge  

**2. Download and run installer script**  

\`\`\`bash
curl -s -o ~/install_boxwine.sh https://raw.githubusercontent.com/olegos2/mobox/main/install && bash ~/install_boxwine.sh
\`\`\`

**3. Start BoxWine**  

\`\`\`bash
boxwine
\`\`\`

---

## ⚙️ Configuration & Features

### Wine Management
- Install/uninstall Wine containers via Manage packages menu  
- Mesa VirGL, Turnip, Wine Mono, Gecko can be installed in Wine Start Menu  

### Dynarec Settings
- Box64 & Box86 dynarec variables can be toggled in Settings menu for performance optimization  
- See Box64 usage and Box86 usage for details  

### System & Root Settings
- Change Wine locale, DXVK HUD presets, Turnip settings  
- Fallback resolution if X11 resolution is undetected  
- OOM Adjuster available for root if low memory kills Termux  

### Termux-X11 Preferences
- Display resolution mode: exact  
- Display resolution: 1280x720  
- Reseed Screen while soft keyboard is open: OFF  
- Fullscreen on device display: ON  
- Force Landscape orientation: ON  
- Hide display cutout: ON  
- Show additional keyboard: OFF  
- Prefer scancodes when possible: ON  

### Input & Controls
- Touch controls require Input Bridge app  
- Gamepad and keyboard supported through scripts  

---

## ❌ Known Issues
- Termux crash with custom themes:  
\`\`\`bash
rm -rf $PREFIX/glibc/opt/termux-style
\`\`\`
- Prefix creation freeze on PhysX install may occur, adjust via Compatibility settings  
- SD845 devices: disable DRI3 in Compatibility settings  

---

## 📱 Supported Devices

**Minimum:**  
- CPU: Snapdragon 439 / MediaTek Helio G25 / Unisoc T606  
- RAM: 3 GB  
- Storage: 5 GB free  
- Android 10+  

**Recommended:**  
- CPU: Snapdragon 655 / Helio G85 / Unisoc T616  
- RAM: 4+ GB  
- GPU: Adreno 610+ / Mali-G52+  
- Android 12+  

**Performance Boost:** +20–40% on mid-range devices; optimized for weak GPUs/CPUs  

---

## 🔧 Debugging
- Enable logs: Mobox -> Settings -> Debug Settings  
- Log path: /sdcard/mobox_log.txt  

---


---

## 💻 Third-party Software
- glibc-packages  
- Box64  
- Box86  
- DXVK  
- DXVK-ASYNC  
- DXVK-GPLASYNC  
- VKD3D  
- D8VK  
- Termux-app  
- Termux-X11  
- Wine  
- Wine-GE-Custom  
- Mesa  
- Mesa-Zink  
- Mesa-VirGL  

EOF