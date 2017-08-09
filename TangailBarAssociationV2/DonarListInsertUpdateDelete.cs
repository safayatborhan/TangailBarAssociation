using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace TangailBarAssociationV2
{
    public class donar
    {
        public string donarName { get; set; }
        public string donarBook { get; set; }
        public string noOfBook { get; set; }
        public string donateDate { get; set; }
    }
    public class DonarListInsertUpdateDelete
    {
        public static void insertDonarInformation(string donarName, string donarBook, string noOfBook, string donateDate)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "insert into DonarList(donarName,donarBook,noOfBook,donateDate) values('" + donarName + "','" + donarBook + "','" + noOfBook + "','" + donateDate + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void deleteDonar(string donarName)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "delete from DonarList where donarName = '" + donarName + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void updateDoner(string donarName, string donarBook, string noOfBook, string donateDate)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "update DonarList set donarBook='" + donarBook + "',noOfBook='" + noOfBook + "',donateDate='" + donateDate + "' where donarName='" + donarName + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<donar> GetAllDonars()
        {
            List<donar> allDonar = new List<donar>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry1 = "select donarName,donarBook,noOfBook,donateDate from DonarList";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                donar entryDonar = new donar();
                entryDonar.donarName = (rdr[0].ToString());
                entryDonar.donarBook = rdr[1].ToString();
                entryDonar.noOfBook = rdr[2].ToString();
                entryDonar.donateDate = rdr[3].ToString();
                allDonar.Add(entryDonar);
            }
            connection.Close();
            return allDonar;
        }
    }
}