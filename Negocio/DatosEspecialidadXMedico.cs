﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class DatosEspecialidadXMedico
    {
        public void AltaEspecialidadXMedico(Medico nuevoMedico, Especialidad nuevaEspecialidad)
        {
            AccesoDB conexion = null;
            try
            {
                conexion = new AccesoDB();
                 conexion.setearConsulta("insert into ESPECIALIDADXMEDICO(IDMED, IDESP) values(@IDMED, @IDESP)");
                conexion.Comando.Parameters.Clear();
                conexion.Comando.Parameters.AddWithValue("@IDMED", nuevoMedico.IdMedico);
                conexion.Comando.Parameters.AddWithValue("@IDESP", nuevaEspecialidad.IdEspecialidad);

                conexion.abrir();
                conexion.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                if (conexion != null)
                {
                    conexion.cerrar();
                }
            }
            
        }
        
    }
}
