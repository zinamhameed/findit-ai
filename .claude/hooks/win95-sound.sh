#!/usr/bin/env bash
# Plays the classic Windows 95 "tada" sound when an agent finishes.
# Used by the SubagentStop hook in .claude/settings.json.
# Override the sound with:  export WIN95_SOUND="/path/to/sound.wav"

cat >/dev/null 2>&1 || true   # hook input arrives on stdin; not needed here

DIR="$(cd "$(dirname "$0")" && pwd)"
LOCAL_WAV="$DIR/../sounds/tada.wav"   # optional copy for macOS/Linux
WIN_WAV='C:\Windows\Media\tada.wav'    # ships with Windows

play_windows() {
  local f="${WIN95_SOUND:-$WIN_WAV}"
  powershell.exe -NoProfile -NonInteractive -Command \
    "(New-Object Media.SoundPlayer '$f').PlaySync()" >/dev/null 2>&1
}

case "$(uname -s)" in
  MINGW*|MSYS*|CYGWIN*)
    play_windows ;;
  Darwin)
    f="${WIN95_SOUND:-$LOCAL_WAV}"
    if [ -f "$f" ]; then afplay "$f"; else afplay /System/Library/Sounds/Glass.aiff; fi ;;
  Linux)
    if grep -qi microsoft /proc/version 2>/dev/null; then
      play_windows                     # WSL: use the Windows sound
    else
      f="${WIN95_SOUND:-$LOCAL_WAV}"
      if [ -f "$f" ]; then
        (command -v paplay >/dev/null && paplay "$f") || (command -v aplay >/dev/null && aplay -q "$f")
      else
        printf '\a'
      fi
    fi ;;
esac >/dev/null 2>&1 &

exit 0
