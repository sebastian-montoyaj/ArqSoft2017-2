package com.udea.cliente;

// Clase cuyo unico proposito es invocar las ventanas con las que debe interactuar el usuario
public class Cliente
{
    public static void main(String[] args) throws Exception
    {
        // Aqui se inicia la ventana de bienvenida (o presentacion), esta solo aparece 5 segundos y despues se muestra la ventana principal
        new Thread (new VentanaBienvenida()).start();
    }
}
