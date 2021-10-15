<?php 


class Telefono{
    public $marca;
    public $modelo;
    protected $alambrico = true;
    protected $comunicacion;

    public function __construct($marca_, $modelo_)
    {
        $this->marca = $marca_;
        $this->modelo = $modelo_;
        $this->comunicacion = ($this->alambrico) ? 'Alambrico' : 'Inalambrico';
    }

    public function llamar(){
        return print('<p>Rinnng Rinnng</p>');
    }

    public function mas_info(){
        return print('<ul>
        <li>Marca <b> ' . $this->marca .  ' </b> </li>
        <li>Modelo <b> ' . $this->modelo .  ' </b> </li>
        <li>Comunicacion <b> ' . $this->comunicacion .  ' </b> </li>
        </ul>');
    }
}

class Celular extends Telefono{
    protected $alambrico = false;

    public function __construct($marca, $modelo){
        parent::__construct($marca, $modelo);
    }
}

final class SmarthPhone extends Celular {
    public $alambrico = false;
    public $internet = true;

    public function __construct($marca, $modelo){
        parent::__construct($marca, $modelo);
    }

    //POLIMORFISMO
    public function mas_info(){
        return print('<ul>
        <li>Marca <b> ' . $this->marca .  ' </b> </li>
        <li>Modelo <b> ' . $this->modelo .  ' </b> </li>
        <li>Comunicacion <b> ' . $this->comunicacion .  ' </b> </li>
        <li> Dispositivo con accesso a internet </li>
        </ul>');
    }
}

echo '<h1>EVOLUCION DEL TELEFONO</h1>';

echo '<h2>TELEFONO</h2>';
$tel_casa = new Telefono('panasonic', 'kc2392');
$tel_casa->llamar();
$tel_casa->mas_info();

echo '<h2>CELULAR</h2>';
$mi_cel = new Celular('Motorola', 'fd43');
$mi_cel->llamar();
$mi_cel->mas_info();

echo '<h2>SMARTHPHONE</h2>';
$mi_smarth = new SmarthPhone('Moto', 'g3');
$mi_smarth->llamar();
$mi_smarth->mas_info();


?>

