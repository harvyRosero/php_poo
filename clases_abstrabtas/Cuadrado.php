<?php

class Cuadrado extends Poligono{

    private $lado;

    public function __construct($l)
    {
        $this->lados = 4;
        $this->lado = $l;
    }

    public function perimetro(){
        return $this->lado * $this->lados;
    }

    public function area(){
        return pow($this->lado, 2);
    }

    // public function lados(){
    //     return '<p>un ' . get_called_class() .  ' tiene ' . $this->lados .' lados </p>';
    // }
}

?>