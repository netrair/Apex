<div align="center">

# Apex Panel

<p>
  <a href="https://workers.cloudflare.com/"><img src="https://img.shields.io/badge/Cloudflare-Workers-F38020?style=for-the-badge&logo=cloudflare&logoColor=white" alt="Cloudflare Workers" /></a>
  <a href="https://developers.cloudflare.com/d1/"><img src="https://img.shields.io/badge/Cloudflare-D1-F38020?style=for-the-badge&logo=cloudflare&logoColor=white" alt="Cloudflare D1" /></a>
  <img src="https://img.shields.io/badge/Protocol-VLESS-00ADD8?style=for-the-badge&logo=v&logoColor=white" alt="VLESS" />
  <img src="https://img.shields.io/badge/Protocol-Trojan-00ADD8?style=for-the-badge&logo=trojan&logoColor=white" alt="Trojan" />
</p>
<p>
  <img src="https://img.shields.io/badge/Users-Multi--User-2563EB?style=for-the-badge" alt="Multi-User" />
  <img src="https://img.shields.io/badge/Version-1.0.0-7C3AED?style=for-the-badge" alt="Version 1.0.0" />
  <a href="https://t.me/NetraIR"><img src="https://img.shields.io/badge/Telegram-NetraIR-26A5E4?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Channel" /></a>
</p>

**Language / زبان / 语言:** [English](#english) | [فارسی](#%D9%81%D8%A7%D8%B1%D8%B3%DB%8C) | [中文](#%E4%B8%AD%E6%96%87)

</div>

---

## English

### Apex Panel

A free, self-hosted VLESS / Trojan proxy panel with **built-in multi-user management**, running entirely on **Cloudflare Workers + D1**. No VPS. No server maintenance. No monthly cost — deploy in minutes, then create users, set traffic quotas and expiry dates, and hand out subscription links from one clean web panel.

[Report a Bug](https://github.com/netrair/Apex/issues) · [Request a Feature](https://github.com/netrair/Apex/issues) · [Telegram Channel](https://t.me/NetraIR)

---

### ✨ Features

- ⚡ **Runs on Cloudflare Workers + D1** — no VPS, no Docker, no server to patch or reboot
- 🔐 **VLESS & Trojan** protocol support out of the box
- 👥 **Multi-user management** — every user gets their own UUID, Trojan password and private subscription link
- 📊 **Traffic quotas & expiry** — set limits in MB / GB / TB, set or extend expiry dates, enable or disable users, and add notes
- 📈 **Usage tracking** — daily usage per user and a quick view of your top consumers
- 🔗 **Subscription links** for Xray-core, sing-box, Clash, WireGuard and Amnezia clients (v2rayNG, Streisand, Clash Meta, Hiddify, NekoBox, and more)
- 📱 **Per-user subscription page** — one-tap copy buttons and QR codes
- 🛡️ **Fragment & noise settings** to help traffic blend in on restrictive networks
- 🌐 **Warp / Warp Pro** integration for extra routing options
- 🖥️ **Full web panel** (English & Persian) — manage UUIDs, passwords, ports, DNS, routing rules and bypass/block lists without touching code
- 💾 **Backup & restore** — export and import your users and settings as JSON
- 🤖 **Optional Telegram bot integration**
- 🔒 **Password-protected panel** with a customizable secure path

---

### Deploy

1. In the [Cloudflare dashboard](https://dash.cloudflare.com), go to **Workers & Pages** and create a new Worker.
2. Create a **D1 database** (Storage & Databases → D1). Any name works.
3. Open the database, go to the **Console** tab, paste the entire contents of `schema.sql` and click **Execute**.
4. Open your Worker → **Settings → Bindings → Add → D1 database**, select the database, and set the variable name to exactly `netra`.
5. Paste the contents of `worker.js` into the Worker editor and deploy.
6. Open `https://<your-worker-url>/apex/panel` and create an admin password (min. 8 characters) on your first visit.

That's it — the panel works right away with sensible defaults. Afterward you can customize everything (secure path, UUID, Trojan password, ports, routing rules, etc.) from inside the panel.

> ⚠️ **Important:** you must create the D1 database, run `schema.sql` in its Console, and bind the database to your Worker with the variable name exactly `netra`. If any of these steps is skipped, the panel will show an error and won't work correctly.

---

### Security notes

- Change the default secure path, UUID and Trojan password from the panel before sharing any subscription link.
- Choose a strong panel password, and treat your Worker URL like a secret — it's the entry point to your panel.
- Export a backup from the panel regularly, especially before changing settings or updating the Worker.

---

### Support

Questions, news and updates: join the Telegram channel **[@NetraIR](https://t.me/NetraIR)**

---

## فارسی

<div dir="rtl">

### پنل Apex

یک پنل پروکسی VLESS / Trojan رایگان و خودمیزبان با **مدیریت چندکاربره‌ی داخلی** که کاملاً روی **Cloudflare Workers + D1** اجرا می‌شه. بدون نیاز به VPS، بدون نگهداری سرور، بدون هزینه‌ی ماهانه — در چند دقیقه دیپلوی کنید، بعد کاربر بسازید، حجم و تاریخ انقضا تعیین کنید و لینک اشتراک بدید، همه از یک پنل وب تمیز.

[گزارش باگ](https://github.com/netrair/Apex/issues) · [درخواست ویژگی جدید](https://github.com/netrair/Apex/issues) · [کانال تلگرام](https://t.me/NetraIR)

---

### ✨ ویژگی‌ها

- ⚡ **اجرا روی Cloudflare Workers + D1** — بدون VPS، بدون Docker و بدون سروری که نیاز به آپدیت یا ری‌استارت داشته باشه
- 🔐 پشتیبانی از پروتکل‌های **VLESS** و **Trojan**
- 👥 **مدیریت چندکاربره** — هر کاربر UUID، پسورد Trojan و لینک اشتراک اختصاصی خودش رو داره
- 📊 **حجم مصرفی و تاریخ انقضا** — محدودیت بر حسب MB / GB / TB، تعیین یا تمدید تاریخ انقضا، فعال/غیرفعال‌کردن کاربر و افزودن یادداشت
- 📈 **ثبت مصرف** — مصرف روزانه‌ی هر کاربر و نمایش سریع پرمصرف‌ترین کاربرها
- 🔗 لینک سابسکریپشن برای کلاینت‌های Xray-core، sing-box، Clash، WireGuard و Amnezia (مثل v2rayNG، Streisand، Clash Meta، Hiddify، NekoBox و...)
- 📱 **صفحه‌ی اشتراک اختصاصی برای هر کاربر** — دکمه‌ی کپی با یک لمس و QR کد
- 🛡️ تنظیمات **Fragment** و نویز برای عبور بهتر از فیلترینگ‌های سخت‌گیرانه
- 🌐 پشتیبانی از **Warp / Warp Pro** برای مسیرهای اضافی
- 🖥️ **پنل وب کامل** (فارسی و انگلیسی) — UUID، پسورد، پورت‌ها، DNS، قوانین مسیریابی و لیست‌های bypass/block بدون دست‌زدن به کد قابل مدیریته
- 💾 **بکاپ و بازیابی** — خروجی و ورودی JSON از کاربران و تنظیمات
- 🤖 **اتصال اختیاری به بات تلگرام**
- 🔒 **پنل محافظت‌شده با رمز** و مسیر امن قابل تغییر

---

### نصب و دیپلوی

1. توی [داشبورد Cloudflare](https://dash.cloudflare.com) به بخش **Workers & Pages** برید و یک Worker جدید بسازید.
2. یک **دیتابیس D1** بسازید (Storage & Databases ← D1). هر اسمی می‌تونه باشه.
3. دیتابیس رو باز کنید، بخش **Console** رو بزنید، کل محتوای فایل `schema.sql` رو کپی و اونجا جای‌گذاری کنید و روی **Execute** بزنید.
4. Worker خودتون رو باز کنید ← **Settings ← Bindings ← Add ← D1 database**، دیتابیس رو انتخاب کنید و نام متغیر رو دقیقاً `netra` بذارید.
5. محتوای فایل `worker.js` رو توی ویرایشگر Worker جای‌گذاری و دیپلوی کنید.
6. آدرس `https://<آدرس-worker-شما>/apex/panel` رو باز کنید و بار اول یک رمز ادمین (حداقل ۸ کاراکتر) برای پنل بسازید.

همین! پنل بلافاصله با تنظیمات پیش‌فرض کار می‌کنه. بعداً می‌تونید همه‌چیز (مسیر امن، UUID، پسورد Trojan، پورت‌ها، قوانین مسیریابی و...) رو از داخل پنل شخصی‌سازی کنید.

> ⚠️ **مهم:** حتماً باید دیتابیس D1 رو بسازید، فایل `schema.sql` رو توی Console اجرا کنید و دیتابیس رو با نام متغیر دقیقاً `netra` به Worker وصل کنید. اگه هرکدوم از این مراحل انجام نشه، پنل خطا می‌ده و درست نصب نمی‌شه.

---

### نکات امنیتی

- قبل از اشتراک‌گذاری هر لینک سابسکریپشن، مسیر امن، UUID و پسورد Trojan پیش‌فرض رو از پنل عوض کنید.
- یک رمز قوی برای پنل انتخاب کنید و با آدرس Workerتون مثل یک اطلاعات محرمانه رفتار کنید — این آدرس دروازه‌ی ورود به پنلتونه.
- به‌صورت منظم از پنل بکاپ بگیرید، مخصوصاً قبل از تغییر تنظیمات یا آپدیت Worker.

---

### پشتیبانی

سوال، اخبار و آپدیت‌ها: عضو کانال تلگرام **[@NetraIR](https://t.me/NetraIR)** بشید

</div>

---

## 中文

### Apex Panel

一个免费、可自托管的 VLESS / Trojan 代理面板，**内置多用户管理**，完全运行在 **Cloudflare Workers + D1** 上。无需 VPS，无需维护服务器，无需每月付费 —— 几分钟即可部署完成，然后在同一个简洁的网页面板中创建用户、设置流量配额与到期时间，并分发订阅链接。

[提交 Bug](https://github.com/netrair/Apex/issues) · [功能建议](https://github.com/netrair/Apex/issues) · [Telegram 频道](https://t.me/NetraIR)

---

### ✨ 功能特点

- ⚡ **运行在 Cloudflare Workers + D1 上** —— 无需 VPS、Docker，也无需维护或重启服务器
- 🔐 开箱即用支持 **VLESS 和 Trojan** 协议
- 👥 **多用户管理** —— 每位用户拥有独立的 UUID、Trojan 密码和专属订阅链接
- 📊 **流量配额与到期时间** —— 可按 MB / GB / TB 设置限额，设置或续期到期时间，启用/停用用户，并添加备注
- 📈 **用量统计** —— 记录每位用户的每日用量，并快速查看用量最高的用户
- 🔗 为 Xray-core、sing-box、Clash、WireGuard 和 Amnezia 客户端提供**订阅链接**（v2rayNG、Streisand、Clash Meta、Hiddify、NekoBox 等）
- 📱 **用户专属订阅页面** —— 提供一键复制按钮和二维码
- 🛡️ **Fragment 与噪声设置**，帮助流量更好地绕过严格的网络封锁
- 🌐 集成 **Warp / Warp Pro**，提供更多路由选择
- 🖥️ **完整的网页面板**（支持英文和波斯语）—— 无需接触代码即可管理 UUID、密码、端口、DNS、路由规则以及绕过/屏蔽列表
- 💾 **备份与恢复** —— 以 JSON 格式导出和导入用户及设置
- 🤖 **可选的 Telegram 机器人集成**
- 🔒 **面板密码保护**，并支持自定义安全路径

---

### 部署方法

1. 在 [Cloudflare 控制台](https://dash.cloudflare.com) 进入 **Workers & Pages**，创建一个新的 Worker。
2. 创建一个 **D1 数据库**（Storage & Databases → D1），名称任意。
3. 打开该数据库，进入 **Console**（控制台）标签页，粘贴 `schema.sql` 的全部内容，然后点击 **Execute**（执行）。
4. 打开你的 Worker → **Settings → Bindings → Add → D1 database**，选择该数据库，并将变量名设置为 `netra`（必须完全一致）。
5. 将 `worker.js` 的内容粘贴到 Worker 编辑器中并部署。
6. 打开 `https://<你的-worker-地址>/apex/panel`，首次访问时创建管理员密码（至少 8 个字符）。

就这么简单 —— 面板会立即使用合理的默认配置正常运行。之后你可以在面板内自定义所有设置（安全路径、UUID、Trojan 密码、端口、路由规则等）。

> ⚠️ **重要：** 必须创建 D1 数据库，在其 Console 中执行 `schema.sql`，并将数据库以变量名 `netra`（必须完全一致）绑定到你的 Worker。若跳过其中任何一步，面板会报错，无法正常安装使用。

---

### 安全提示

- 在分享任何订阅链接之前，请先在面板中修改默认的安全路径、UUID 和 Trojan 密码。
- 请设置强密码，并像对待机密信息一样对待你的 Worker 地址 —— 它是进入你面板的入口。
- 请定期在面板中导出备份，尤其是在修改设置或更新 Worker 之前。

---

### 获取支持

问题咨询、最新消息与更新：欢迎加入 Telegram 频道 **[@NetraIR](https://t.me/NetraIR)**

---

<div align="center">

Made with ❤️ for a freer internet.

</div>
