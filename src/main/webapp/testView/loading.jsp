<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Página Principal</title>
    <style>
        /* Paleta de colores de Inconser */
        :root {
            --color-primario: #1E334E; /* Azul Inconser */
            --color-secundario: #6c757d; /* Gris */
            --color-blanco: #ffffff; /* Blanco */
            --color-negro: #000000; /* Negro */
        }

        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: var(--color-blanco);
            font-family: Arial, sans-serif;
        }

        .loader-wrapper {
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background: var(--color-blanco);
            z-index: 1000;
        }

        .loader {
            border: 16px solid var(--color-secundario);
            border-top: 16px solid var(--color-primario);
            border-radius: 50%;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .loader-text {
            margin-top: 20px;
            font-size: 18px;
            color: var(--color-primario);
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="loader-wrapper" id="loader-wrapper">
        <div class="loader"></div>
        <div class="loader-text">Cargando...</div>
    </div>

    <div id="content" class="hidden">
        <!-- Tu contenido principal aquí -->
        <h1>Bienvenido a la página principal</h1>
        <p>Esta es tu página principal después del preloader.</p>
    </div>

    <script>
        document.onreadystatechange = function () {
            if (document.readyState === "complete") {
                document.getElementById("loader-wrapper").style.display = "none";
                document.getElementById("content").classList.remove("hidden");
            }
        }
    </script>
</body>
</html>
