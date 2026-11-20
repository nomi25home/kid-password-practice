#!/bin/sh
set -e

# THEME picks a default emoji/background/accent preset. Any of
# THEME_EMOJI/THEME_BG/THEME_ACCENT can still be set explicitly in .env to
# override just that one piece, regardless of THEME.
case "$THEME" in
  boy)
    : "${THEME_EMOJI:=🚀}"
    : "${THEME_BG:=linear-gradient(135deg, #7dd3fc 0%, #93c5fd 50%, #86efac 100%)}"
    : "${THEME_ACCENT:=#2563eb}"
    ;;
  girl)
    : "${THEME_EMOJI:=🌸}"
    : "${THEME_BG:=linear-gradient(135deg, #ff9de2 0%, #ffcf77 50%, #a0f0ed 100%)}"
    : "${THEME_ACCENT:=#d63384}"
    ;;
  neutral|*)
    : "${THEME_EMOJI:=🌟}"
    : "${THEME_BG:=linear-gradient(135deg, #fde68a 0%, #a7f3d0 50%, #c4b5fd 100%)}"
    : "${THEME_ACCENT:=#7c3aed}"
    ;;
esac
export THEME_EMOJI THEME_BG THEME_ACCENT

envsubst '${CHILD_NAME} ${CHILD_PASSWORD} ${THEME_EMOJI} ${THEME_BG} ${THEME_ACCENT}' \
  < /etc/nginx/templates/index.html.template \
  > /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'
