#!/bin/bash
# probe-somosgay.sh — Live HTTP probe of somosgay.org
#
# Usage:
#   ./scripts/probe-somosgay.sh           # one-shot, prints table
#   ./scripts/probe-somosgay.sh --json    # JSON output for piping
#   ./scripts/probe-somosgay.sh --alert   # exits non-zero if any non-200 detected
#
# Cron example (weekly probe + log):
#   0 9 * * 1 cd /root/somosgay-context && ./scripts/probe-somosgay.sh >> docs/06_website_status/probe-history.log 2>&1
#
# Setup:
#   chmod +x scripts/probe-somosgay.sh
#
# Requirements: bash, curl. No other deps.

set -euo pipefail

BASE="https://www.somosgay.org"
PATHS=(
  "/"
  "/about"
  "/news"
  "/nanderekora"
  "/mpox"
  "/nangareko"
  "/sitemap.xml"
  "/robots.txt"
  "/noticias/rss"
)

MODE="${1:-text}"

probe_one() {
  local path="$1"
  local result
  result=$(curl -sS -o /dev/null -w "%{http_code}|%{size_download}|%{time_total}" \
    --max-time 10 \
    "${BASE}${path}" 2>&1) || result="000|0|0"
  echo "${path}|${result}"
}

if [[ "$MODE" == "--json" ]]; then
  echo "{"
  echo "  \"base\": \"${BASE}\","
  echo "  \"timestamp\": \"$(date -u +%Y-%m-%dT%H:%M:%SZ)\","
  echo "  \"results\": ["
  first=true
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    if [[ "$first" == "true" ]]; then first=false; else echo ","; fi
    printf '    {"path": "%s", "http": %s, "bytes": %s, "time_s": %s}' \
      "$path" "$code" "$size" "$time"
  done
  echo ""
  echo "  ]"
  echo "}"
elif [[ "$MODE" == "--alert" ]]; then
  fail=0
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    if [[ "$code" != "200" && "$p" != "/sitemap.xml" && "$p" != "/nangareko" ]]; then
      # /sitemap.xml 404 and /nangareko 404 are KNOWN issues (see docs/06_website_status/alive-now.md)
      # Alert on any OTHER non-200
      echo "ALERT: ${path} returned ${code} (${size}B in ${time}s)" >&2
      fail=1
    fi
  done
  exit $fail
else
  # text mode
  printf "%-25s %-6s %-10s %-10s\n" "PATH" "HTTP" "BYTES" "TIME(s)"
  printf "%-25s %-6s %-10s %-10s\n" "----" "----" "-----" "-------"
  for p in "${PATHS[@]}"; do
    line=$(probe_one "$p")
    IFS='|' read -r path code size time <<< "$line"
    printf "%-25s %-6s %-10s %-10s\n" "$path" "$code" "${size}B" "$time"
  done
fi