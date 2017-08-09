using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace TangailBarAssociationV2
{
    public class BookCategory
    {
        public string category { get; set; }
    }

    public class BookCategoryInsertUpdateDelete
    {
        public static void insertBookCategory(string category)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "insert into CategoryTable values ('" + category + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void deleteBookCategory(string category)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "delete from CategoryTable where category='"+category+"'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<BookCategory> GetAllCategories()
        {
            List<BookCategory> ccategory = new List<BookCategory>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry1 = "select category from CategoryTable";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookCategory entryCategory = new BookCategory();
                entryCategory.category = (rdr[0].ToString());

                ccategory.Add(entryCategory);
            }
            connection.Close();
            return ccategory;
        }
    }
}