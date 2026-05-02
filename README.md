🎂 Hub del Cumpleaños de Andy
Un portal web elegante e interactivo diseñado para centralizar todas las actividades de cumpleaños, con un modal de bienvenida personalizado e integración fluida con experiencias de Genially.

🌟 Características
Modal de Bienvenida: Una interfaz de saludo profesional que prepara al usuario para la experiencia.

Hub Centralizado: Botones de acceso rápido para la invitación digital y el Escape Room.

Integración en Pantalla Completa: Visualiza el contenido de Genially directamente dentro de la web sin salir del sitio.

Diseño Responsivo: Optimizado para dispositivos móviles, tablets y ordenadores.

Interfaz Limpia: Tema oscuro con acentos vibrantes en rosa y púrpura para un aspecto moderno.

🚀 Cómo Funciona
El proyecto utiliza una lógica de Aplicación de una sola página (SPA) simple pero efectiva:

Bienvenida: La capa superpuesta modal-bienvenida asegura la atención del usuario antes de ver el contenido principal.

Navegación: Las funciones de JavaScript abrir() y cerrar() gestionan la visibilidad del contenedor iframe de Genially.

Interacción: Cuando se selecciona una opción, el portal inyecta la URL en el iframe y lo muestra a pantalla completa con un botón de "Volver" para regresar al hub.

🛠️ Instalación
Clona el repositorio:
git clone https://github.com/andyfalaguerayago/cumple.git

Abre index.html en cualquier navegador web moderno.

📂 Estructura del Proyecto
├── index.html      # Archivo principal (HTML + CSS + JS)
└── README.md       # Documentación del proyecto

🎨 Personalización
Para cambiar los enlaces o el fondo, busca estas líneas en index.html:

Fondo: Cambia la URL en el estilo de fondo del body.

Enlaces: Actualiza las URLs en los atributos onclick="abrir('...')" de los botones.

📜 Licencia
Este proyecto es de código abierto. ¡Siéntete libre de usarlo para tus propias fiestas de cumpleaños!

Desarrollado con ❤️ para el cumpleaños de Andy.
