using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginGit.Web.Formularios
{
    public partial class WfmAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarUsuarios();
            }
        }

        public void cargarUsuarios()
        {
            List<TBL_USUARIO> _listaUsuario = new List<TBL_USUARIO>();
            _listaUsuario = LogicaNegocio.LogicaLogin.Login.getAllUser();
            if (_listaUsuario != null && _listaUsuario.Count > 0)
            {
                GdvUsuariosLista.DataSource = _listaUsuario;
                GdvUsuariosLista.DataBind();
            }
        }
    }
}