# Pump it Up: Data Mining the Water Table

![Competition Badge](https://img.shields.io/badge/DrivenData-Competition-blue)
![Accuracy](https://img.shields.io/badge/Best_Accuracy-82.06%25-green)
![Python](https://img.shields.io/badge/Python-3.x-blue)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange)

Proyecto de Machine Learning para la competición [Pump it Up: Data Mining the Water Table](https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table) de DrivenData.

**Autor:** Antonio Luis Martínez Trapote  
**Fecha:** Junio 2025  
**Trabajo final del módulo de Machine Learning - UCM**

> ⚠️ **NOTA IMPORTANTE**: Este repositorio contiene únicamente el código del proyecto. Los datos de la competición NO están incluidos para cumplir con las reglas de DrivenData. Consulta [DATA.md](DATA.md) para obtener instrucciones sobre cómo conseguir los datos.

## 📋 Descripción del Proyecto

Este proyecto aborda el desafío de predecir el estado operacional de bombas de agua en Tanzania utilizando técnicas de Machine Learning. El objetivo es clasificar las bombas de agua en tres categorías:

- **Functional**: Bombas que funcionan correctamente
- **Functional needs repair**: Bombas que funcionan pero necesitan reparación
- **Non functional**: Bombas que no funcionan

## 🎯 Resultados Principales

- **Mejor Accuracy en competición:** 82.06%
- **Modelo final:** CatBoostClassifier con RandomSearchCV
- **Posición en leaderboard:** [Incluir posición si está disponible]

## 📊 Metodología

### 1. Análisis Exploratorio de Datos (EDA)
- Análisis de variables categóricas y numéricas
- Identificación de patrones y correlaciones
- Tratamiento de valores faltantes y atípicos

### 2. Feature Engineering
- Creación de nuevas variables a partir de las existentes
- Tratamiento de variables de alta cardinalidad
- Encoding de variables categóricas
- Manejo de variables con alta proporción de zeros

### 3. Modelos Evaluados
- **Random Forest**
- **CatBoost** (Modelo final)
- **Logistic Regression**
- Comparación de múltiples configuraciones y hiperparámetros

### 4. Optimización
- **RandomSearchCV** para optimización de hiperparámetros
- **Validación cruzada** para evaluación robusta
- **Early stopping** para prevenir overfitting

## 🗂️ Estructura del Proyecto

```
PumpItUp_project/
├── PumpItUp_AntonioTrapote.ipynb    # Notebook principal con todo el análisis
├── README.md                        # Documentación del proyecto
├── DATA.md                          # Instrucciones para obtener los datos
├── LICENSE                          # Licencia MIT (requerida por DrivenData)
├── requirements.txt                 # Dependencias de Python
├── setup.sh                         # Script de configuración automática
├── test_environment.py              # Script de verificación de dependencias
├── check_compliance.sh              # Script de verificación de cumplimiento
├── .gitignore                       # Protección de archivos sensibles
└── [datos]                          # Archivos CSV (no incluidos en repo)
    ├── training_values.csv          # Datos de entrenamiento (obtener de DrivenData)
    ├── training_labels.csv          # Etiquetas de entrenamiento (obtener de DrivenData)
    └── test_values.csv              # Datos de test (obtener de DrivenData)
```

## 🚀 Cómo Ejecutar el Proyecto

### Prerequisitos
- Python 3.8+
- Jupyter Notebook o VS Code
- Git

### Instalación

#### Paso 1: Obtener los Datos
⚠️ **Primero debes obtener los datos de la competición**. Consulta [DATA.md](DATA.md) para instrucciones detalladas.

#### Paso 2: Configurar el Proyecto

##### Opción A: Configuración Automática (Recomendada)
```bash
chmod +x setup.sh
./setup.sh
```

##### Opción B: Configuración Manual

1. **Clonar el repositorio**
```bash
git clone https://github.com/tu-usuario/PumpItUp_project.git
cd PumpItUp_project
```

2. **Crear entorno virtual**
```bash
python -m venv .venv
source .venv/bin/activate  # En Windows: .venv\Scripts\activate
```

3. **Instalar dependencias**
```bash
pip install -r requirements.txt
```

4. **Verificar instalación**
```bash
python test_environment.py
```

5. **Verificar cumplimiento de reglas** (opcional)
```bash
./check_compliance.sh
```

6. **Ejecutar el notebook**
```bash
jupyter notebook PumpItUp_AntonioTrapote.ipynb
```

## 📈 Resultados de Modelos

| Modelo | Accuracy CV | Accuracy Competición | Notas |
|--------|-------------|---------------------|-------|
| Random Forest | ~0.79 | ~0.79 | Modelo baseline |
| CatBoost (básico) | ~0.80 | ~0.82 | Mejor rendimiento inicial |
| CatBoost + GridSearch | 0.8057 | **0.8206** | Mejor modelo final |
| CatBoost + Early Stop | 0.7998 | 0.8142 | Prevención overfitting |

## 🔍 Características Principales del Análisis

### Variables Más Importantes
- **gps_height**: Altura GPS de la bomba
- **quantity**: Cantidad de agua disponible
- **waterpoint_type**: Tipo de punto de agua
- **lga**: Área de gobierno local
- **ward**: Distrito administrativo

### Técnicas de Feature Engineering
- Agrupación de categorías con baja frecuencia
- Creación de variables de interacción
- Tratamiento especial de variables geográficas
- Encoding optimizado para modelos de boosting

## 📚 Aprendizajes y Mejoras Futuras

### Aprendizajes Clave
- Importancia del feature engineering en competiciones de ML
- Ventajas de CatBoost para variables categóricas de alta cardinalidad
- Balance entre prevención de overfitting y rendimiento en competición

### Posibles Mejoras
- [ ] Implementar pipeline de transformaciones para producción
- [ ] Explorar técnicas de selección automática de features
- [ ] Probar modelos de ensemble más sofisticados
- [ ] Análisis más profundo de variables geográficas
- [ ] Implementar validación temporal si fuera relevante

## 📝 Notas Importantes

> **Visualización:** Este notebook contiene imágenes insertadas como adjuntos que pueden no visualizarse correctamente en Google Colab. Se recomienda abrirlo en Jupyter Notebook o VS Code para ver todos los gráficos.

> **Código Comentado:** El notebook incluye múltiples bloques de código comentados que representan diferentes enfoques y experimentos realizados durante el desarrollo.

## 🏆 Competición

- **Plataforma:** [DrivenData](https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table)
- **Tipo:** Clasificación multiclase
- **Métrica:** Accuracy
- **Dataset:** ~60,000 registros de entrenamiento, ~15,000 de test

## 📄 Licencia y Cumplimiento

Este proyecto está licenciado bajo la **MIT License** según se requiere por las reglas de la competición DrivenData.

### 🔒 Cumplimiento de Reglas de la Competición

- ✅ **Código**: Compartido públicamente bajo MIT License (permitido)
- ✅ **Datos**: NO incluidos en el repositorio (cumple con las reglas de DrivenData)
- ✅ **Uso**: Solo para propósitos educativos y de la competición

Los datos originales deben obtenerse directamente de DrivenData. Ver [DATA.md](DATA.md) para más información.

#### Verificación de Cumplimiento
Puedes ejecutar el script de verificación para confirmar que el repositorio cumple con todas las reglas:
```bash
./check_compliance.sh
```

Este script verifica que:
- No hay archivos de datos rastreados por git
- Los archivos CSV están protegidos en .gitignore
- Existe la licencia MIT requerida
- Se proporcionan instrucciones para obtener los datos

## 🤝 Contacto

**Antonio Luis Martínez Trapote**
- [LinkedIn](https://www.linkedin.com/in/antonio-trapote/) 

---

⭐ Si este proyecto te resulta útil, no dudes en darle una estrella en GitHub!
