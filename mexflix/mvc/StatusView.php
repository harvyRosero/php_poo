<?php

require_once('StatusController.php');
echo '<h1>CRUD CON mvs DE LA TABLA STATUS</h1>';

$status = new StatusController();

$status_data = $status->read();
var_dump($status_data);

$num_status = count($status_data);
echo '<h2> numero :'. $num_status . '</h2>';

echo '<h2> Tabla de estatus </h2>';

echo '<table>
    <tr>
        <th>status_id</th>
        <th>status</th>
    </tr>';
    for($n = 0; $n < count($status_data); $n++){
        echo '<tr>
            <td>' . $status_data[$n]['status_id'] . '</td>
            <td>' . $status_data[$n]['status'] . '</td>
        </tr>';
    }
echo '</table>';


echo '<h2>insetando estatus</h2>';
$new_status = array(
    'status_id' => 0,
    'status' => 'otro estatus'
);

// $status->create( $new_status );

echo '<h2>actualizando estatus</h2>';
$update_status = array(
    'status_id' => 13,
    'status' => 'other etatus'
);

$status->update( $update_status );

echo '<h2>eliminando estatus</h2>';
// $status->delete(13);