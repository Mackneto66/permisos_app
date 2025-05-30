# permisos_app

Esta es una aplicación pequeña diseñada para realizar **pruebas de aprendizaje** sobre la gestión de permisos y estados de ejecución de una aplicación, determinando si está en primer plano, segundo plano, etc. Desarrollada como parte de un curso para profundizar en estos conceptos, utiliza **Riverpod** para la gestión de estados y la librería `permission_handler` para la interacción con los permisos del sistema operativo.

---

## 📌 Características

* Solicita y gestiona **permisos esenciales** (cámara, galería, ubicación, etc.).
* Detecta el **estado de actividad de la aplicación** (primer plano, segundo plano, inactiva).
* Proporciona una interfaz sencilla para **observar el comportamiento** de la app en diferentes estados y con distintos permisos.
* Ideal para **experimentar y entender** cómo interactúan las aplicaciones móviles con las APIs del sistema y el ciclo de vida.

---

## 🚀 Instalación

1. **Clona el repositorio:**

    ```bash
    git clone [https://github.com/tu_usuario/tu_repositorio.git](https://github.com/tu_usuario/tu_repositorio.git)
    ```

2. **Navega al directorio del proyecto:**

    ```bash
    cd tu_repositorio
    ```

3. **Instala las dependencias de Flutter:**

    ```bash
    flutter pub get
    ```

4. **Ejecuta la aplicación:**

    ```bash
    flutter run
    ```

---

## 🛠 Uso

* Abre la aplicación en un dispositivo o emulador.
* La aplicación te solicitará los permisos necesarios. Concede o deniega según quieras probar.
* Observa cómo cambian los indicadores de permisos y el estado de la aplicación (en primer plano, en segundo plano, etc.) al interactuar con ella o al llevarla al segundo plano.

---

## 📜 Requisitos

* **Flutter SDK**: Versión 3.27.4 o superior.
* **Dart SDK**: Versión 3.6.2 o superior.
* **Dispositivo/Emulador**: Android o iOS.
* **Dependencias**: `flutter_riverpod`, `permission_handler`.

---

## 📌 Contribución

Si deseas contribuir, ¡toda ayuda es bienvenida! Sigue estos pasos:

* Haz un fork del repositorio.
* Crea una nueva rama (`git checkout -b feature-nueva`).
* Realiza tus cambios y envía un pull request.

---

## ⚖️ Licencia

Esta aplicación está bajo la licencia [**MIT License**](LICENSE).

---

## 📩 Contacto

Si tienes dudas o sugerencias, puedes contactarme en [tu email o perfil de GitHub].
