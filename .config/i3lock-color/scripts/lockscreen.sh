#!/bin/bash
# ── CONFIG ────────────────────────────────────────────

# Fonts
FONT1="JetBrainsMono Nerd Font"
FONT2="Liberation Mono"
FONT3="Noto Sans Mono"

# Screenshot path
IMG="/tmp/i3lock_blur.png"

# ── DYNAMIC FONT SIZE CALCULATION ───────────────────

# Get screen resolution width (requires xrandr)
SCREEN_WIDTH=$(xrandr | grep '*' | awk '{print $1}' | head -n1 | cut -d 'x' -f1)
# Define a base width for scaling calculations (adjust if needed)
BASE_WIDTH=1920
# Calculate scaling factor as a float (ex: if 3840, scale will be 2.00)
SCALE=$(echo "scale=2; $SCREEN_WIDTH / $BASE_WIDTH" | bc)

# Base font sizes (for 1920 width display)
BASE_TIME_SIZE=48
BASE_DATE_SIZE=24
BASE_LAYOUT_SIZE=20
BASE_GREETER_SIZE=32
BASE_VERIF_SIZE=20
BASE_WRONG_SIZE=20

# Calculate new sizes by multiplying with the scaling factor (rounded to an integer)
TIME_SIZE=$(printf "%.0f" $(echo "$BASE_TIME_SIZE * $SCALE" | bc))
DATE_SIZE=$(printf "%.0f" $(echo "$BASE_DATE_SIZE * $SCALE" | bc))
LAYOUT_SIZE=$(printf "%.0f" $(echo "$BASE_LAYOUT_SIZE * $SCALE" | bc))
GREETER_SIZE=$(printf "%.0f" $(echo "$BASE_GREETER_SIZE * $SCALE" | bc))
VERIF_SIZE=$(printf "%.0f" $(echo "$BASE_VERIF_SIZE * $SCALE" | bc))
WRONG_SIZE=$(printf "%.0f" $(echo "$BASE_WRONG_SIZE * $SCALE" | bc))

# Debug outputs (optional)
echo "Screen width: $SCREEN_WIDTH, Scale: $SCALE"
echo "Font sizes: Time=$TIME_SIZE, Date=$DATE_SIZE, Layout=$LAYOUT_SIZE, Greeter=$GREETER_SIZE, Verif=$VERIF_SIZE, Wrong=$WRONG_SIZE"

# ── SETUP: CAPTURE AND PROCESS SCREEN ────────────────

# Capture current screen and apply a blur effect
import -window root "$IMG"
convert "$IMG" -blur 0x8 "$IMG"

# Kill any leftover sound listeners (sound is removed)
pkill -f "aplay.*click.wav" 2>/dev/null
pkill -f "evtest" 2>/dev/null

# ── LOCKSCREEN ─────────────────────────────────────────

i3lock \
    --image "$IMG" \
    --inside-color="#232627ff" \
    --ring-color="#767676ff" \
    --line-color="#232627ff" \
    --separator-color="#444444ff" \
    --keyhl-color="#40da76ff" \
    --bshl-color="#cc2263ff" \
    --ringver-color="#2080bbff" \
    --ringwrong-color="#cc2263ff" \
    --insidever-color="#232627ff" \
    --insidewrong-color="#232627ff" \
    --verif-color="#ffffffff" \
    --wrong-color="#ffffffff" \
    --layout-color="#ffffffff" \
    --time-color="#ffffffff" \
    --date-color="#ffffffff" \
    --greeter-color="#ffffffcc" \
    --noinput-text="" \
    --pass-media-keys \
    --radius=130 \
    --ring-width=10 \
    --wrong-text="Nope." \
    --verif-text="Checking..." \
    --greeter-text="Type to unlock" \
    --clock --indicator \
    --time-font="$FONT1" \
    --date-font="$FONT2" \
    --layout-font="$FONT3" \
    --verif-font="$FONT1" \
    --wrong-font="$FONT1" \
    --greeter-font="$FONT2" \
    --time-size=$TIME_SIZE \
    --date-size=$DATE_SIZE \
    --layout-size=$LAYOUT_SIZE \
    --greeter-size=$GREETER_SIZE \
    --verif-size=$VERIF_SIZE \
    --wrong-size=$WRONG_SIZE \
    --greeter-pos="ix:iy-40" \
    --time-pos="ix:iy-10" \
    --date-pos="ix:iy+30" \
    --layout-pos="ix:iy+60" \
    --verif-pos="ix:iy+60" \
    --wrong-pos="ix:iy+60"
