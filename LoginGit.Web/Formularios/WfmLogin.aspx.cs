using AccesoDatos;
using LogicaNegocio.LogicaLogin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGit.Web.Formularios
{
    public partial class WfmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                TBL_USUARIO _infoUsuario = new TBL_USUARIO();
                Encriptacion encriptar = new Encriptacion();
                _infoUsuario = LogicaNegocio.LogicaLogin.Login.getUserLogin(txtEmail.Text,
                                                                            encriptar.sha1encriptacion(txtPassword.Text));
                if (_infoUsuario != null)
                {
                    Response.Write("<script>alert('Ingreso Correcto');location='WfmAdministrador.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Usuario o contrasena erronea');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
            }
        }
    }
}