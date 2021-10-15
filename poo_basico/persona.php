<?php

class Perro {

    public $nombre;
    public $raza;
    public $edad;
    public $sexo;
    public $adiestrado;
    public $comida;
    private $pulgas;

    public static $mejor_amigo = 'hombre';
    const MEJOR_CUALIDAD  = 'fidelidad';

    public function __construct($nombre_, $raza_, $edad_, $sexo_, $adiestrado_, $pulgas_ )
    {
        $this->nombre = $nombre_;
        $this->raza = $raza_;
        $this->edad = $edad_ . ' años';
        $this->sexo = ($sexo_)?'macho' : 'hembra' ;
        $this->adiestrado = ($adiestrado_)? 'adiestrado' : 'No adiestrado' ;
        $this->pulgas = $pulgas_;

        echo '<P><mark> Hola soy el constructor de la clase </mark> </P>';
    }

    public function __destruct()
    {
        echo '<P><mark>Hola soy el destructor</mark></P>';
    }

    //metodos
    public function ladrar(){
        echo '<p><mark> GUAAU GUAUUU </mark> </p>';
    }

    public function comer($comida_){
        $this->comida =  $comida_;
        echo '<P>' . $this->nombre . ' come ' . $this->comida . '</P>';
    }

    public function tiene_pulgas(){
        echo ($this->pulgas) ? 'si tiene pulgas ' : 'no tiene pulgas';
    }

    public function mas_info(){
        self::ladrar();
        perro::comer('carne');
        echo '<P>el emjor amigo del perro es el' . perro::$mejor_amigo . '</P>';

        echo '<P>L mejor cualidad del perro es la' . self::MEJOR_CUALIDAD .  ' </P>';
    }


}

$luna = new Perro('luna', 'beagle', '7', false, true, true);
echo '<h2>' .$luna->nombre . '</h2>';
echo '<h2>' .$luna->raza . '</h2>';
echo '<h2>' .$luna->edad . '</h2>';
echo '<h2>' .$luna->sexo . '</h2>';
echo '<h2>' .$luna->adiestrado . '</h2>';

$luna->ladrar();
$luna->comer('carne');
$luna->tiene_pulgas();
$luna->mas_info();


?>