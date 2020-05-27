package com.google.buscador.venta.bean;

import lombok.Data;

@Data 
public class CelularBean {

	private int idCelular;
	private String modelo;
	private String color;
	private CategoriaBean categoria;
	
	
}
