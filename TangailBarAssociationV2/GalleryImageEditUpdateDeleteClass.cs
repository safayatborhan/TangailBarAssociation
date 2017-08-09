using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;

namespace TangailBarAssociationV2
{
    public class Gallery
    {
        OleDbConnection connection = new OleDbConnection();
        public string ID { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
    }
    public class GalleryImageEditUpdateDeleteClass
    {
        public static List<Gallery> GetAllImages()
        {
            List<Gallery> listGallery = new List<Gallery>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry1 = "select ID,Image,Description from ImageGallery";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Gallery gallery = new Gallery();
                gallery.ID = rdr[0].ToString();
                gallery.Image = rdr[1].ToString();
                gallery.Description = rdr[2].ToString();
                listGallery.Add(gallery);
            }
            connection.Close();
            return listGallery;
        }

        public static void UpdateImage(string ID, string Image, string Description)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "update ImageGallery set Image='" + Image+ "',Description='" + Description + "' where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }

        public static void DeleteImage(string ID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "delete from ImageGallery where ID='" + ID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
    }
}