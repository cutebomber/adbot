#!/bin/bash
# ── Telegram AdBot Setup Script ──────────────────────────────────────────────

echo "🤖 Telegram AdBot Setup"
echo "========================"

if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found. Install it first."
    exit 1
fi

echo "📦 Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "📥 Installing dependencies..."
pip install -r requirements.txt

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next step:"
echo "  Open bot.py and fill in the CONFIG section at the top:"
echo "    BOT_TOKEN, API_ID, API_HASH, OWNER_ID"
echo ""
echo "Then run:"
echo "  source venv/bin/activate && python bot.py"
