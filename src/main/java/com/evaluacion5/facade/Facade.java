package com.evaluacion5.facade;

import java.sql.SQLException;
import java.util.List;

import com.evaluacion5.daos.CursoDAO;
import com.evaluacion5.daos.FormasDePagoDAO;
import com.evaluacion5.daos.InscripcionDAO;
import com.evaluacion5.entidades.CursoDTO;
import com.evaluacion5.entidades.FormaDePagoDTO;
import com.evaluacion5.entidades.InscripcionDTO;

public class Facade {
	
	public int registrarInscripcion(InscripcionDTO dto) throws SQLException, ClassNotFoundException {
		
		InscripcionDAO dao = new InscripcionDAO();
		
		return dao.insertarInscripcion(dto);
	}
	
	public List<InscripcionDTO> obtenerInscripciones() throws SQLException, ClassNotFoundException{
		InscripcionDAO dao = new InscripcionDAO();
		
		return dao.obtieneInscripciones();
		
	}
	
	public List<CursoDTO> obtenerCursos() throws SQLException, ClassNotFoundException{
		
		CursoDAO dao = new CursoDAO();
		return dao.obtieneCurso();
	}

	public List<FormaDePagoDTO> obtenerFormasDePago() throws SQLException, ClassNotFoundException {
		FormasDePagoDAO dao = new FormasDePagoDAO();
		
		return dao.obtieneFormasDePago();
	}
}
