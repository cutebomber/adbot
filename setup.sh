#!/bin/bash
# ── Telegram AdBot Setup Script ──────────────────────────────────────────────

echo "🤖 Telegram AdBot Setup"
echo "========================"

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found. Install it first."
    exit 1
fi

# Create venv
echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install deps
echo "📥 Installing dependencies..."
pip install -r requirements.txt

# Check .env
if [ ! -f .env ]; then
    cp .env.example .env
    echo ""
    echo "⚠️  .env file created from template."
    echo "   Edit .env and fill in:"
    echo "   - BOT_TOKEN  (from @BotFather)"
    echo "   - API_ID     (from my.telegram.org)"
    echo "   - API_HASH   (from my.telegram.org)"
    echo "   - OWNER_ID   (your Telegram user ID)"
    echo ""
    echo "Then run:  source venv/bin/activate && python bot.py"
else
    echo "✅ .env found."
    echo "🚀 Starting bot..."
    set -a; source .env; set +a
    python bot.py
fi
