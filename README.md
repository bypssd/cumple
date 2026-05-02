<img width="256" height="256" alt="cumpleandy_logo" src="https://github.com/user-attachments/assets/23af8281-edb8-4eb6-bc94-028daf90b6ba" />
# 🎂 Hub del Cumpleaños de Andy

Un portal web elegante e interactivo diseñado para centralizar todas las actividades de cumpleaños, con un modal de bienvenida personalizado e integración fluida con experiencias de Genially.

---

🚀 Requisitos del "Sistema" (Hardware Social)

Para que este portal funcione correctamente en la vida real, asegúrate de cumplir con:

CPU: Un cerebro con al menos 2GB de ganas de fiesta.

Energía: Batería social por encima del 15% (si no, el Escape Room se pone difícil).

Navegador: Cualquier cosa que no sea Internet Explorer. Por favor, estamos en 2026.

Periféricos: Un refresco en la mano derecha y algo de picoteo en la izquierda.

⚠️ Reporte de Vulnerabilidades (Seguridad)

Si encuentras un "bug" crítico en la fiesta, sigue estos pasos:

Vulnerabilidad de Hidratación: Si se acaba el hielo, contacta con el administrador en la barra inmediatamente.

Fallo de Audio: Si la música no es de tu agrado, el sistema permite quejas, pero el DJ tiene un "firewall" de ignorancia activado.

Error de Autenticación: Si no conoces a Andy, probablemente te has equivocado de repositorio (o de fiesta).

---

## 🌟 Características

* **Modal de Bienvenida**: Una interfaz de saludo profesional que prepara al usuario para la experiencia.
* **Hub Centralizado**: Botones de acceso rápido para la invitación digital y el Escape Room.
* **Integración en Pantalla Completa**: Visualiza el contenido de Genially directamente dentro de la web sin salir del sitio.
* **Diseño Responsivo**: Optimizado para dispositivos móviles, tablets y ordenadores.
* **Interfaz Limpia**: Tema oscuro con acentos vibrantes en rosa y púrpura para un aspecto moderno.

---

## 🚀 Cómo Funciona

El proyecto utiliza una lógica de Aplicación de una sola página (SPA) simple pero efectiva:

1. **Bienvenida**: La capa superpuesta modal-bienvenida asegura la atención del usuario antes de ver el contenido principal.
2. **Navegación**: Las funciones de JavaScript abrir() y cerrar() gestionan la visibilidad del contenedor iframe de Genially.
3. **Interacción**: Cuando se selecciona una opción, el portal inyecta la URL en el iframe y lo muestra a pantalla completa con un botón de "Volver" para regresar al hub.

---

## 🛠️ Instalación

1. Clona el repositorio:
   git clone https://github.com/bypssd/cumple.git

2. Abre index.html en cualquier navegador web moderno.

---

## 📂 Estructura del Proyecto

├── index.html      # Archivo principal (HTML + CSS + JS)
└── README.md       # Documentación del proyecto

---

## 🎨 Personalización

Para cambiar los enlaces o el fondo, busca estas líneas en index.html:

* **Fondo**: Cambia la URL en el estilo de fondo del body.
* **Enlaces**: Actualiza las URLs en los atributos onclick="abrir('...')" de los botones.

---

## 📜 Licencia

Este proyecto es de código abierto. ¡Siéntete libre de usarlo para tus propias fiestas de cumpleaños!

---
Desarrollado con ❤️ para el cumpleaños de Andy.
