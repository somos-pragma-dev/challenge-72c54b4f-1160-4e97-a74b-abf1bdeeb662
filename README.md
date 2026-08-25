# Desarrollo de una aplicación CRUD con Rails y RSpec

Necesitamos desarrollar una aplicación CRUD para gestionar productos en un catálogo de e-commerce. Los productos tienen un nombre, precio, stock y categoría. El sistema debe prohibir precios negativos y nombres duplicados. Debemos asegurar la idempotencia en las operaciones de creación y actualización de productos. El catálogo debe soportar un tráfico de 1 500 solicitudes por segundo en hora pico.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Ruby on Rails |
| **Nivel** | junior-l1 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y generará un ZIP listo para usar.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y generará un archivo ZIP descargable. Descárgalo y extráelo en la carpeta donde quieras trabajar.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no genera el ZIP automáticamente al terminar el análisis, escríbele: "genera el ZIP ahora".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Configuración inicial y creación de productos

**Objetivo:** Configurar el entorno de desarrollo y permitir la creación de productos en el catálogo.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Configura el entorno de desarrollo con Rails y RSpec.
- Crea un modelo de producto con los atributos necesarios (nombre, precio, stock, categoría).
- Implementa la funcionalidad para crear productos, asegurando que no se permitan nombres duplicados ni precios negativos.
- Garantiza la idempotencia en la creación de productos.

**Entregable:** Entorno de desarrollo configurado y funcionalidad para crear productos idempotentes.

<details>
<summary>Pistas de conocimiento</summary>

- Considera cómo validar los atributos del producto antes de guardarlos.
- Piensa en cómo implementar la idempotencia en la creación de productos.

</details>

### Fase 2: Lectura y actualización de productos

**Objetivo:** Implementar la funcionalidad para leer y actualizar productos en el catálogo.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Implementa la funcionalidad para leer productos por su ID.
- Agrega la funcionalidad para actualizar productos, asegurando que no se permitan nombres duplicados ni precios negativos.
- Garantiza la idempotencia en la actualización de productos.

**Entregable:** Funcionalidad para leer y actualizar productos idempotentes.

<details>
<summary>Pistas de conocimiento</summary>

- Considera cómo buscar productos por su ID de manera eficiente.
- Piensa en cómo validar los atributos del producto antes de actualizarlos.
- Reflexiona sobre cómo implementar la idempotencia en la actualización de productos.

</details>

### Fase 3: Eliminación de productos y pruebas

**Objetivo:** Implementar la funcionalidad para eliminar productos y escribir pruebas para validar el comportamiento del sistema.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Implementa la funcionalidad para eliminar productos por su ID.
- Escribe pruebas con RSpec para validar el comportamiento del sistema en las operaciones de creación, lectura, actualización y eliminación de productos.
- Asegura que las pruebas cubran los casos de éxito y los casos de error.

**Entregable:** Funcionalidad para eliminar productos y suite de pruebas con RSpec.

<details>
<summary>Pistas de conocimiento</summary>

- Considera cómo eliminar productos por su ID de manera segura.
- Piensa en cómo escribir pruebas efectivas con RSpec para validar el comportamiento del sistema.
- Reflexiona sobre cómo cubrir los casos de éxito y los casos de error en las pruebas.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es un modelo de producto en Rails y para qué sirve?
- **paraQueSirve**: ¿Para qué sirve validar los atributos del producto antes de guardarlos?
- **comoSeUsa**: ¿Cómo se usa RSpec para escribir pruebas en Rails?
- **erroresComunes**: ¿Cuáles son los errores comunes al implementar la funcionalidad CRUD en Rails?

## Criterios de Evaluacion

- Configurar correctamente el entorno de desarrollo con Rails y RSpec.
- Implementar la funcionalidad para crear, leer, actualizar y eliminar productos idempotentes.
- Escribir pruebas efectivas con RSpec para validar el comportamiento del sistema.

---

*Reto generado automaticamente por Challenge Generator - Pragma*
