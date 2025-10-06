#!/bin/bash
# ----------------------------------------------------------
# Ejecuta los tres modelos: ResNet, AlexNet y VGG
# ----------------------------------------------------------

# Directorios
IMG_DIR="data/pet_images"
DOGFILE="data/dognames.txt"
OUT_DIR="data"

# --- Modelo ResNet ---
echo "Ejecutando modelo ResNet..."
python3 src/check_images.py --dir "$IMG_DIR" --arch resnet --dogfile "$DOGFILE" > "$OUT_DIR/resnet_pet-images.txt"

# --- Modelo AlexNet ---
echo "Ejecutando modelo AlexNet..."
python3 src/check_images.py --dir "$IMG_DIR" --arch alexnet --dogfile "$DOGFILE" > "$OUT_DIR/alexnet_pet-images.txt"

# --- Modelo VGG ---
echo "Ejecutando modelo VGG..."
python3 src/check_images.py --dir "$IMG_DIR" --arch vgg --dogfile "$DOGFILE" > "$OUT_DIR/vgg_pet-images.txt"

echo "Todos los modelos se ejecutaron correctamente. Revisa los archivos de salida en $OUT_DIR"
