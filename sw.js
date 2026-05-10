// Nombre del caché para que la app cargue más rápido
const CACHE_NAME = 'cumple-andy-v1';

// Al instalarse, el Service Worker se activa inmediatamente
self.addEventListener('install', (event) => {
    self.skipWaiting();
});

self.addEventListener('activate', (event) => {
    event.waitUntil(clients.claim());
});

// Estrategia de red: Intenta cargar de internet, si falla, no bloquea la app
self.addEventListener('fetch', (event) => {
    event.respondWith(
        fetch(event.request).catch(() => {
            return caches.match(event.request);
        })
    );
});
