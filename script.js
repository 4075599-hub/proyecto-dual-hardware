// 1. Selección: Atrapamos el contenedor vacío del HTML
const contenedor = document.getElementById('contenedor-tabla');

// 2. Lógica: Usamos Fetch para ir a buscar el archivo JSON
fetch('hardware.json')
    .then(respuesta => respuesta.json()) // Parseamos los datos, proceso casi instantáneo en JS
    .then(datos => {
        // Empezamos a dibujar la tabla
        let tablaHTML = `
            <table>
                <tr>
                    <th>ID</th>
                    <th>Tipo</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Precio (€)</th>
                </tr>
        `;

        // Recorremos el JSON y creamos una fila por cada dispositivo
        datos.forEach(dispositivo => {
            tablaHTML += `
                <tr>
                    <td>${dispositivo.id}</td>
                    <td>${dispositivo.tipo}</td>
                    <td>${dispositivo.marca}</td>
                    <td>${dispositivo.modelo}</td>
                    <td>${dispositivo.precio}</td>
                </tr>
            `;
        });

        tablaHTML += `</table>`;

        // 3. Acción: Inyectamos todo este código en el contenedor del HTML
        contenedor.innerHTML = tablaHTML;
    })
    .catch(error => console.error("Error al cargar el JSON:", error));