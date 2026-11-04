#!/bin/sh
# Builds ODISSEI-Annual-Plan-2027.pdf from index.html and content.js.
# Usage: sh make-pdf.sh   (needs Python 3 and Google Chrome or Chromium)
set -e
cd "$(dirname "$0")"
PORT="${PORT:-8611}"
OUT="ODISSEI-Annual-Plan-2027.pdf"

# Find Chrome: macOS app, then the usual Linux names
for c in "$CHROME" "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" google-chrome google-chrome-stable chromium chromium-browser; do
  if [ -n "$c" ] && { [ -x "$c" ] || command -v "$c" >/dev/null 2>&1; }; then CHROME="$c"; break; fi
done
[ -n "$CHROME" ] || { echo "Google Chrome or Chromium not found. Set CHROME=/path/to/chrome"; exit 1; }

# Serve the page locally while Chrome prints it
python3 -m http.server "$PORT" >/dev/null 2>&1 &
SERVER=$!
trap 'kill $SERVER 2>/dev/null' EXIT
sleep 1

EXTRA=""
[ "$(uname)" = "Linux" ] && EXTRA="--no-sandbox"

# ?pdf draws every animation finished, at A4 width (794 x 1123 px)
"$CHROME" --headless=new --disable-gpu $EXTRA --no-pdf-header-footer \
  --window-size=794,1123 --virtual-time-budget=10000 \
  --print-to-pdf="$OUT" "http://localhost:$PORT/index.html?pdf" 2>/dev/null

echo "Saved $OUT"
