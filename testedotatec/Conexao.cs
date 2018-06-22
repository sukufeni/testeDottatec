using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace testedotatec
{
    /// <summary>
    /// Summary description for Conexao
    /// </summary>
    public class Conexao
    {
        private readonly SqlConnection conn;

        public Conexao()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexao"].ConnectionString);
        }

        public SqlDataReader consultar(String consulta)
        {
            var cmd = new SqlCommand(consulta, conn);
            cmd.Connection.Open();
            var dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;
        }

        public void Alterar(String alteracao)
        {
            var cmd = new SqlCommand(alteracao, conn);
            cmd.Connection.Close();
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }

        public void Alterar(string alteracao, SqlParameter[] parameters = null)
        {
            var cmd = new SqlCommand(alteracao, conn);
            cmd.Connection.Close();
            if (parameters != null)
            {
                cmd.Parameters.AddRange(parameters);
            }
            cmd.Connection.Open();

            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
    }
}