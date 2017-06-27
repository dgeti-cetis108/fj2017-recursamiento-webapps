<?php
$conexion = mysqli_connect('127.0.0.1', 'root', 'toor', 'recursamiento', 3306);

if (!$conexion) {
    die('Error de conexion a mysql');
} else {
    $consulta = 'select firstname,lastname,age,gender,email,phone,country_id from users';
    $resultado = mysqli_query($conexion, $consulta);
    if (!$resultado) {
        echo 'Error al ejecutar la consulta';
    } elseif ($resultado->num_rows > 0) {
        $usuarios = array();
        while ($usuario = $resultado->fetch_assoc()) {
            array_push($suarios, $usuario);
        }
    } else {
        echo 'Resultado sin registros de la consulta';
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pruebas</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>NOMBRE</th>
                <th>APELLIDOS</th>
                <th>EDAD</th>
                <th>GENERO</th>
                <th>CORREO ELECTRONICO</th>
                <th>TELEFONO</th>
                <th>PAIS</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>BIDKAR</td>
                <td>ARAGON CARDENAS</td>
                <td>37</td>
                <td>MASCULINO</td>
                <td>BIDKAR@CETIS108.EDU.MX</td>
                <td>6871234567</td>
                <td>MEXICO</td>
            </tr>
        </tbody>
    </table>
</body>
</html>