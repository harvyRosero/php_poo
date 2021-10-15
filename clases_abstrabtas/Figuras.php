<?php 

require 'Poligono.php';
require 'Triangulo.php';
require 'Cuadrado.php';
require 'Rectangulo.php';
require 'Hexagono.php';

echo '<h2>Poligono</h2>';
echo '<p>figura formada por 3 o mas rectas, angulos o vetices</p>';

echo '<h2>Perimetro</h2>';
echo '<p>el perimetro de un poligono es igual a la suma de longitudes de sus lados. </p>';

echo '<h2>Area</h2>';
echo '<p> El area de un poligono es la medida de la superficie encerrada por un poligono </p>';

// ------------------------ 

echo '<h2>TRIANGULO</h2>';
$triangulo = new Triangulo(3,6,9, 10);
echo '<p>' . $triangulo->lados() .' </p>';
echo '<p>Perimetro del '. get_class($triangulo) . ': <mark>'. $triangulo->perimetro() . ' </mark> </p>';
echo '<p>Area del '. get_class($triangulo) . ': <mark>'. $triangulo->area() . ' </mark> </p>';
echo '<hr>';

echo '<h2>CUADRADO</h2>';
$cuadrado = new Cuadrado(7);
echo '<p>' . $cuadrado->lados() .' </p>';
echo '<p>Perimetro del '. get_class($cuadrado) . ': <mark>'. $cuadrado->perimetro() . ' </mark> </p>';
echo '<p>Area del '. get_class($cuadrado) . ': <mark>'. $cuadrado->area() . ' </mark> </p>';
echo '<hr>';

echo '<h2>RECTANGULO</h2>';
$rectangulo = new Rectangulo(5,6);
echo '<p>' . $rectangulo->lados() .' </p>';
echo '<p>Perimetro del '. get_class($rectangulo) . ': <mark>'. $rectangulo->perimetro() . ' </mark> </p>';
echo '<p>Area del '. get_class($rectangulo) . ': <mark>'. $rectangulo->area() . ' </mark> </p>';
echo '<hr>';

echo '<h2>HEXAGONO</h2>';
$hexagono = new Hexagono(8,9);
echo '<p>' . $hexagono->lados() .' </p>';
echo '<p>Perimetro del '. get_class($hexagono) . ': <mark>'. $hexagono->perimetro() . ' </mark> </p>';
echo '<p>Area del '. get_class($hexagono) . ': <mark>'. $hexagono->area() . ' </mark> </p>';
echo '<hr>';



