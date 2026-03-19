#!/bin/bash
set -e

BASE="https://boehmernst.de/wp-content/uploads/2024/12"
BASE25="https://boehmernst.de/wp-content/uploads/2025/01"

download() {
  local url="$1"
  local dest="$2"
  if [ ! -f "$dest" ]; then
    echo "Downloading $url -> $dest"
    curl -sL "$url" -o "$dest"
  else
    echo "Skipping (exists): $dest"
  fi
}

# Header / Misc
download "$BASE/cropped-hintergrund.jpg" "public/images/misc/cropped-hintergrund.jpg"
download "$BASE/71ITH23ADUL._SL1360_-640x1024.jpg" "public/images/misc/buchcover.jpg"
download "$BASE25/Beitrag-Buchautor-700x574.jpg" "public/images/misc/beitrag-buchautor.jpg"

# Medizin (13 Fotos)
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13; do
  download "$BASE/M${i}.jpg" "public/images/medizin/M${i}.jpg"
done

# Harmonie (6 Fotos)
for i in 1 2 3 4 5 6; do
  download "$BASE/HA${i}.jpg" "public/images/harmonie/HA${i}.jpg"
done

# Urlaub (7 Fotos) - Sonderfall: U01-U06, U7
for i in 01 02 03 04 05 06; do
  download "$BASE/U${i}.jpg" "public/images/urlaub/U${i}.jpg"
done
download "$BASE/U7.jpg" "public/images/urlaub/U7.jpg"

# Hunde (10 Fotos)
download "$BASE/H1.jpg" "public/images/hunde/H1.jpg"
download "$BASE/H2.jpg" "public/images/hunde/H2.jpg"
for i in 1 2 3 4 5 6 7 8 9; do
  download "$BASE/EB${i}.jpg" "public/images/hunde/EB${i}.jpg"
done

# Kirmes (8 Fotos)
for i in 1 2 3 4 5 6 7 8; do
  download "$BASE/K${i}.jpg" "public/images/kirmes/K${i}.jpg"
done

# Restaurator (9 Fotos)
for i in 01 02 03 04 05 06 07 08 09; do
  download "$BASE/R${i}.jpg" "public/images/restaurator/R${i}.jpg"
done

# Bettler (6 Fotos: B7-B12)
for i in 7 8 9 10 11 12; do
  download "$BASE/B${i}.jpg" "public/images/bettler/B${i}.jpg"
done

# Hochzeitsfeier (11 Fotos)
for i in 1 2 3 4 5 6 7 8 9 10 11; do
  download "$BASE/HF${i}.jpg" "public/images/hochzeitsfeier/HF${i}.jpg"
done

# Zeche (9 Fotos)
for i in 1 2 3 4 5 6 7 8 9; do
  download "$BASE/Z${i}.jpg" "public/images/zeche/Z${i}.jpg"
done

echo "Done! All images downloaded."
