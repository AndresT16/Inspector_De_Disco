#!/bin/bash

echo "=============================="
echo "📦 Espacio en disco detallado"
echo "=============================="
df -h /

echo
echo "=============================="
echo "📁 Tamaño de carpetas dentro de /"
echo "=============================="
du -h / --max-depth=1 2>/dev/null | sort -rh | head

echo
echo "=============================="
echo "🏠 Tamaño de carpetas en HOME"
echo "=============================="
du -h "$HOME" --max-depth=1 2>/dev/null | sort -rh | head

echo
echo "=============================="
echo "📂 Archivos más pesados en HOME"
echo "=============================="
find "$HOME" -type f -print0 | xargs -0 du -h | sort -rh | head

echo
echo "=============================="
echo "📝 Logs más grandes en /var/log"
echo "=============================="
find /var/log/ -type f -print0 2>/dev/null | xargs -0 du -h | sort -rh | head
