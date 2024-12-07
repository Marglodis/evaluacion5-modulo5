package com.evaluacion5;

import java.sql.SQLException;
import java.util.List;

import com.evaluacion5.entidades.CursoDTO;
import com.evaluacion5.entidades.FormaDePagoDTO;
import com.evaluacion5.facade.Facade;

public class Main {
	public static void main(String[] args) {

		CursoDTO curso = new CursoDTO();
		Facade facade = new Facade();

		try {
			List<CursoDTO> listaCursos = null;

			try {
				listaCursos = facade.obtenerCursos();
				System.out.println(listaCursos);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			List<FormaDePagoDTO> listaFormaPago = null;
			
			try {
				listaFormaPago = facade.obtenerFormasDePago();
				System.out.println(listaFormaPago);

			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
