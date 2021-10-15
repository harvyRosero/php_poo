<?php

class Triangulo extends Poligono{

    private $lado_a;
    private $lado_b;
    private $lado_c;
    private $altura;

    public function __construct($l_a, $l_b, $l_c, $h)
    {
        $this->lados = 3;
        $this->lado_a = $l_a;
        $this->lado_b = $l_b;
        $this->lado_c = $l_c;
        $this->altura = $h;
    }

    public function perimetro(){
        return $this->lado_a + $this->lado_b + $this->lado_c;
    }

    public function area(){
        return ($this->lado_b * $this->altura) / 2;
    }

    // public function lados(){
    //     return '<p>un ' . get_called_class() .  ' tiene ' . $this->lados .' lados </p>';
    // }
}

?>