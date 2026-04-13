# 🤖 Telegram Ad Bot

A full-featured Telegram ad broadcasting bot — send messages to all groups from multiple accounts with per-account custom settings.

---

## ✨ Features

| Feature | Details |
|---|---|
| Multi-Account | Up to 50 Telegram user accounts |
| Per-Account Settings | Custom message + interval per account |
| Group Broadcast | Sends to every group the account is in |
| Smart Delays | Anti-flood delays between sends |
| Analytics | Track sent, failed, success rate |
| Auto Reply | Auto-DM reply for hosted accounts |
| 2FA Support | Handles Telegram two-factor auth |
| Toggle Accounts | Pause/resume individual accounts |

---

## 🚀 Quick Setup

### Step 1 — Get your credentials

1. **Bot Token**: Message [@BotFather](https://t.me/BotFather) → `/newbot`
2. **API ID & Hash**: Go to [my.telegram.org](https://my.telegram.org) → API Development Tools
3. **Your User ID**: Message [@userinfobot](https://t.me/userinfobot)

### Step 2 — Configure

```bash
cp .env.example .env
nano .env   # Fill in BOT_TOKEN, API_ID, API_HASH, OWNER_ID
```

### Step 3 — Run

```bash
chmod +x setup.sh
./setup.sh
```

Or manually:
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
set -a; source .env; set +a
python bot.py
```

---

## 📱 Bot Usage

1. Start the bot → `/start`
2. Go to **Dashboard**
3. **Add Account** → Enter phone + OTP
4. **Set Ad Message** → Your promo text
5. **Set Time Interval** → 5/10/20 min or custom
6. Press **▶️ Start Ads**

### Per-Account Custom Settings
- Go to **My Accounts** → tap ⚙️ on any account
- Set a custom message and/or interval for that account only
- Toggle account active/paused individually

---

## ⚠️ Important Notes

- Use **10 min+ intervals** to avoid bans
- Don't run too many accounts on the same IP (use proxies if needed)
- Sessions are stored encrypted in `sessions/` folder
- The bot only responds to your OWNER_ID for security

---

## 📁 File Structure

```
telegram-adbot/
├── bot.py           # Main bot code
├── requirements.txt # Python dependencies
├── .env.example     # Config template
├── .env             # Your config (don't share!)
├── setup.sh         # Auto-setup script
├── sessions/        # Telethon session files
└── data/
    └── adbot.db     # SQLite database
```

---

## 🔒 Security

- Only your OWNER_ID can use the bot
- Sessions stored locally (never sent anywhere)
- 2FA supported
