using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CADEncuesta.DSEncuestaTableAdapters;

namespace CADEncuesta
{
    public class CADPaises
    {
        private static PaisesTableAdapter adapter = new PaisesTableAdapter();

        public static DSEncuesta.PaisesDataTable GetPaises(string ID)
        {
            return adapter.GetPaises(ID);

         }

        public static bool ExistePaises(string ID)
        {
            return adapter.ExistePais(ID) == 1;
        }
        public static bool ExisteRPaises(string Pais)
        {
            return adapter.ExisteRPaises(Pais) == 1;
        }
        public static string NuevoPais(string ID, string Pais)
        {
            int aux = adapter.InsertarPais(ID,Pais);
            if (aux == 0) return "No se pudo ingresar el pais";
            else return "Registro guandado";

        }

        public static string Modificar( string Pais, string ID)
        {
            int aux = adapter.ModificarPais( Pais, ID);
            if (aux == 0) return "No se pudo modificar el pais";
            else return "Registro modificado";

        }

        public static string Eliminar(string ID)
        {
            int aux = adapter.EliminarPais(ID);
            if (aux == 0) return "No se pudo eliminar el pais";
            else return "Registro eliminado";
        }

        public static DSEncuesta.PaisesDataTable GetReporte(string Pais)
        {
            return adapter.GetReporte(Pais);

        }




    }

}
