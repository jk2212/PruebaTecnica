using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CADEncuesta.DSEncuestaTableAdapters;

namespace CADEncuesta
{
    public class CADPersonas
    {
        private static PersonasTableAdapter adapter = new PersonasTableAdapter();

        public static DSEncuesta.PersonasDataTable GetPersonas(string ID)
        {
            return adapter.GetPersona(ID);
        }

        public static bool ExistePersona(string ID)
        {
            return adapter.ExistePersona(ID) == 1;
        }

        public static string NuevaPersona(string ID, string Nombre, string Apellido, DateTime FechaNacimiento, DateTime FechaFallecimiento, string Pais)
        {
            int aux = adapter.Insertar(ID, Nombre, Apellido,  Convert.ToString(FechaNacimiento), Convert.ToString( FechaFallecimiento), Pais);
            if (aux == 0) return "No se pudo ingresar la persona";
            else return "Registro guandado";

        }

        public static string Modificar(string Nombre, string Apellido, DateTime FechaNacimiento, DateTime FechaFallecimiento,  string Pais, string ID)
        {
            int aux = adapter.ModificarPersona(Nombre, Apellido, Convert.ToString( FechaNacimiento), Convert.ToString(FechaFallecimiento), Pais, ID);
            if (aux == 0) return "No se pudo modificar la persona";
            else return "Registro modificado";

        }

        public static  string Eliminar(string ID)
        {
            int aux = adapter.EliminarPersona(ID);
            if (aux == 0) return "No se pudo eliminar la persona";
            else return "Registro eliminado";
        }

    }
}
