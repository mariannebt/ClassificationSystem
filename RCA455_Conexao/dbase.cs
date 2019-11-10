using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Reflection;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace RCA455_Conexao
{
    public class dbase
    {
        #region Propriedades
        private bool tr = false;
        protected SqlConnection con;
        protected SqlConnection ConTrans;
        protected SqlCommand cmd;
        protected DataTable dt;
        protected SqlDataReader dr;
        SqlTransaction st;
        //private DataSet ds;
        //private SqlDataAdapter da;
        private string ambiente_;
        #endregion

        #region Construtor

        public dbase()
        {

            string ambiente = "Producao";

            ambiente_ = ambiente;

            bool trans = false;

            if (trans)
            {
                tr = trans;
                ConTrans = new SqlConnection(ConfigurationManager.ConnectionStrings[ambiente].ToString());
                ConTrans.Open();
                st = ConTrans.BeginTransaction();
                //st.Connection.Open();
            }
            else
            {
                con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[ambiente].ToString();
            }

        }

        public dbase(string ambiente, bool trans = false)
        {
            ambiente = (String.IsNullOrEmpty(ambiente) ? "Producao" : ambiente);

            ambiente_ = ambiente;


            if (trans)
            {
                tr = trans;
                ConTrans = new SqlConnection(ConfigurationManager.ConnectionStrings[ambiente].ToString());
                ConTrans.Open();
                st = ConTrans.BeginTransaction();
                //st.Connection.Open();
            }
            else
            {
                con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[ambiente].ToString();
            }
        }
        #endregion

        #region Funções
        protected void abrir()
        {
            if (tr)
            {
                if (st.Connection.State == ConnectionState.Closed)
                {
                    throw new Exception("Erro na conexao");
                }
            }
            else
            {
                if (con == null)
                {
                    con = new SqlConnection();
                }
                if (con.State == ConnectionState.Closed)
                {
                    con.ConnectionString = ConfigurationManager.ConnectionStrings[ambiente_].ToString(); con.Open();
                }
            }
        }

        protected void fechar() { if (con.State == ConnectionState.Open) con.Close(); con.Dispose(); }

        #endregion
    }

}