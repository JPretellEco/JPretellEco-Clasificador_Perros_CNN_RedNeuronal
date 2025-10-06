Claro, he integrado la tabla de resultados de la imagen en tu archivo `README.md`, convirtiéndola a formato Markdown para que sea texto nativo y fácil de leer. También he reestructurado ligeramente la sección para presentar los resultados de forma más clara.

Aquí tienes el `README.md` actualizado:

-----

# 🐶 Clasificador de Razas de Perros con Redes Neuronales Convolucionales (CNN)

Proyecto desarrollado como parte del **AWS AI & Machine Learning Scholarship Nanodegree – Udacity**.  
El objetivo es comparar el rendimiento de tres modelos **CNN preentrenados** (`ResNet18`, `AlexNet` y `VGG16`)  
en la tarea de clasificación de imágenes de mascotas (razas de perros) usando **PyTorch**.

-----

## 📁 Estructura del Proyecto

```bash
├── data/
│   ├── pet_images/                  # Carpeta con imágenes de entrenamiento y prueba
│   ├── uploaded_images/             # Carpeta para imágenes nuevas (subidas por el usuario)
│   ├── dognames.txt                 # Lista de nombres válidos de razas de perros
│   ├── imagenet1000_clsid_to_human.txt # Mapeo de clases ImageNet a etiquetas humanas
│   ├── resnet_pet-images.txt        # Resultados del modelo ResNet
│   ├── alexnet_pet-images.txt       # Resultados del modelo AlexNet
│   ├── vgg_pet-images.txt           # Resultados del modelo VGG
│   ├── run_models_batch.sh          # Script batch para ejecutar los tres modelos
│   └── run_models_batch_uploaded.sh   # Script batch para imágenes subidas por el usuario
│
├── src/
│   ├── check_images.py              # Script principal del proyecto
│   ├── classifier.py                # Función que aplica los modelos CNN
│   ├── classify_images.py           # Clasificación y comparación con etiquetas reales
│   ├── adjust_results4_isadog.py    # Determina si las imágenes son perros o no
│   ├── calculates_results_stats.py  # Calcula estadísticas del rendimiento del modelo
│   ├── print_results.py             # Imprime los resultados y métricas
│   ├── get_input_args.py            # Gestión de argumentos desde la línea de comandos
│   ├── get_pet_labels.py            # Genera etiquetas de las imágenes
│   ├── funciones.py                 # Funciones auxiliares
│   └── print_functions_for_lab_checks.py # Funciones de verificación
│
├── docs/
│   ├── LICENSE                      # Licencia MIT
│   ├── .gitignore                   # Ignora pycache, entornos virtuales, etc.
│   └── requirements.txt             # Dependencias del proyecto
│
└── README.md                        # Este archivo
```

-----

## ⚙️ Instalación y Configuración

### 1️⃣ Clonar el repositorio

```bash
git clone https://github.com/JPretellEco/JPretellEco-Clasificador_Perros_CNN_RedNeuronal.git
cd JPretellEco-Clasificador_Perros_CNN_RedNeuronal
```

### 2️⃣ Crear un entorno virtual (opcional pero recomendado)

```bash
python3 -m venv venv
source venv/bin/activate
```

### 3️⃣ Instalar las dependencias

```bash
pip install -r docs/requirements.txt
```

-----

## 🚀 Ejecución del Proyecto

### 🔹 Clasificar imágenes con un modelo específico

```bash
python3 src/check_images.py --dir data/pet_images --arch vgg --dogfile data/dognames.txt
```

Opciones disponibles para `--arch`:

  * `resnet`
  * `alexnet`
  * `vgg`

-----

### 🔹 Ejecutar los tres modelos automáticamente

```bash
bash data/run_models_batch.sh
```

Esto generará los archivos de salida:

  * `data/resnet_pet-images.txt`
  * `data/alexnet_pet-images.txt`
  * `data/vgg_pet-images.txt`

-----

## 📊 Resultados

A continuación se presentan los resultados obtenidos al ejecutar los tres modelos sobre el conjunto de datos de prueba.

### Resumen del Conjunto de Datos

| Métrica               | Cantidad |
| --------------------- | :------: |
| \# Total de Imágenes   |    40    |
| \# Imágenes de Perros  |    30    |
| \# Imágenes de No-Perros |    10    |

-----

### Rendimiento de los Modelos

| Arquitectura CNN | % Correcto (No-Perros) | % Correcto (Perros) | % Correcto (Razas) | % Coincidencia de Etiquetas |
| :--------------- | :--------------------: | :-----------------: | :----------------: | :-------------------------: |
| **ResNet** |         90.0%          |     **100.0%** |       90.0%        |            82.5%            |
| **AlexNet** |      **100.0%** |     **100.0%** |       80.0%        |            75.0%            |
| **VGG** |      **100.0%** |     **100.0%** |     **93.3%** |          **87.5%** |

Basado en las métricas, el modelo **VGG** fue el de mejor desempeño general para la clasificación de razas de perros, seguido de cerca por **ResNet**.

-----

## 🧠 Modelos Utilizados

| Modelo       | Dataset Base | Parámetros aprox. | Características principales    |
| ------------ | ------------ | ----------------: | ------------------------------ |
| **ResNet18** | ImageNet     |             11.7M | Capas residuales, alto rendimiento |
| **AlexNet** | ImageNet     |               61M | Pionero en CNN, rápido y ligero    |
| **VGG16** | ImageNet     |              138M | Alta precisión, pero más pesado    |

-----

## 🧾 Licencia

Este proyecto está bajo la **Licencia MIT** – ver el archivo [LICENSE](https://www.google.com/search?q=docs/LICENSE) para más detalles.

-----

## 👨‍💻 Autor

**Jeffersson Pretell D.** Proyecto académico del *AWS AI & Machine Learning Nanodegree – Udacity* Desarrollado en **Python 3.12 + PyTorch** sobre **Ubuntu 22.04 LTS**.
