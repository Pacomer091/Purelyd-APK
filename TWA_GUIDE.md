# Guía: Convertir Purelyd en App Android (TWA)

Como Android PWA tiene limitaciones de fondo, la solución es convertir la web en una **Trusted Web Activity (TWA)**. Esto empaqueta tu web en una app `.apk` real.

## Paso 1: Requisitos
Necesitas tener instalado en tu ordenador:
1. **Node.js**
2. **Java (JDK 11+)**
3. **Android Command Line Tools** (o Android Studio)

## Paso 2: Usar Bubblewrap
Bubblewrap es la herramienta oficial de Google para crear TWAs. Abre tu terminal y ejecuta:

```bash
# Instalar la herramienta
npm install -g @bubblewrap/cli

# Iniciar la configuración (hazlo en una carpeta nueva)
bubblewrap init --manifest=https://tu-url-desplegada.com/manifest.json
```

**Bubblewrap te hará varias preguntas:**
- **Package ID**: Usa `com.purelyd.music`
- **SHA256 Fingerprint**: Si es la primera vez, deja que Bubblewrap genere una clave nueva. **Anota el SHA256 que te dé.**

## Paso 3: Validar el Dominio (Crucial)
Para que Android no muestre la barra de navegación del navegador, debes demostrar que eres el dueño de la web.

1. Edita el archivo [assetlinks.json](file:///c:/Users/2008q/Desktop/Purelyd/.well-known/assetlinks.json) que he creado.
2. Sustituye `"TU_SHA256_AQUI"` por el código que te dio Bubblewrap.
3. Despliega tu web para que el archivo sea accesible en: `https://tu-dominio.com/.well-known/assetlinks.json`

## Paso 4: Construir la App
Una vez configurado todo:

```bash
# Generar el archivo APK
bubblewrap build
```

## Beneficios
- ✅ **Audio Focus Real**: Android tratará tu app como multimedia real.
- ✅ **Splash Screen**: Pantalla de carga personalizada.
- ✅ **Notificaciones**: Mejor integración con el sistema.
- ✅ **Play Store**: Puedes subirla a la tienda si quieres.
