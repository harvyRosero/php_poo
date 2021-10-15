<?php
abstract class  Poligono{
    protected $lados;

    abstract protected function perimetro();
    abstract protected function area();

    public function lados(){
        return '<p>un ' . get_called_class() .  ' tiene ' . $this->lados .' lados </p>';
    }
}