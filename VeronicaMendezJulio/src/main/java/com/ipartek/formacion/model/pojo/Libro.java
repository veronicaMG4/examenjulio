package com.ipartek.formacion.model.pojo;

public class Libro {
	private String titulo;
	private int id;
	
	

	public Libro(String titulo, int id) {
		
		this.titulo=titulo;
		this.id = id;
	}
	
	
	
	public Libro() {
		super();
		this.titulo="";
		this.id = -1;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Libro [titulo=" + titulo + ", id=" + id + "]";
	}
	public static void add(Libro l1) {
		// TODO Auto-generated method stub
		
	}
	
	

}
