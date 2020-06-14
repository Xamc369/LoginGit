using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogicaNegocio.LogicaLogin
{
    public class Login
    {
        private static DbLoginASPDataContext db = new DbLoginASPDataContext();

        public static TBL_USUARIO getUserLogin(string email, string password)
        {

            try
            {
                var datosuser = db.TBL_USUARIO.FirstOrDefault(data => data.USU_STATUS == 'A'
                                                       && data.USU_EMAIL.Equals(email)
                                                       && data.USU_PASSWORD.Equals(password));

                return datosuser;
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error. No se puede iniciar sesion");
            }
        }

        public static List<TBL_USUARIO> getAllUser()
        {
            try
            {
                var users = db.TBL_USUARIO.Where(data => data.USU_STATUS == 'A');
                return users.ToList();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error usuario no ingresa");
            }
        }
    }
}
