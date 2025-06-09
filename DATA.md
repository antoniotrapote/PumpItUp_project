# Datos de la Competición

⚠️ **IMPORTANTE**: Los datos originales de la competición NO están incluidos en este repositorio para cumplir con las reglas de uso de datos de DrivenData.

## 📥 Cómo Obtener los Datos

Para ejecutar este proyecto, necesitas obtener los datos directamente de DrivenData:

1. **Registrarse en la competición**: 
   - Visita: https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table/
   - Crea una cuenta en DrivenData (gratuita)
   - Acepta las reglas de la competición

2. **Descargar los datos**:
   - Ve a la sección "Data" de la competición
   - Descarga los siguientes archivos:
     - `training_values.csv`
     - `training_labels.csv` 
     - `test_values.csv`

3. **Colocar los archivos**:
   - Coloca los archivos CSV descargados en la carpeta raíz del proyecto
   - La estructura debería quedar así:
   ```
   PumpItUp_project/
   ├── training_values.csv
   ├── training_labels.csv
   ├── test_values.csv
   ├── PumpItUp_AntonioTrapote.ipynb
   └── ...otros archivos
   ```

## 📋 Descripción de los Datos

- **training_values.csv**: Variables independientes para el conjunto de entrenamiento
- **training_labels.csv**: Variable objetivo (status_group) para el conjunto de entrenamiento  
- **test_values.csv**: Variables independientes para el conjunto de test (para submisiones)

## 🔒 Condiciones de Uso

Los datos están sujetos a las reglas de la competición de DrivenData. Al descargar y usar los datos, aceptas:

- Usar los datos únicamente para propósitos de la competición y aprendizaje
- No redistribuir los datos a terceros
- No hacer los datos públicamente disponibles

Para más información, consulta las reglas completas en el sitio web de la competición.
