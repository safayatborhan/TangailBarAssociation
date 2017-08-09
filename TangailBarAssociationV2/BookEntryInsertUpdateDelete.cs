using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace TangailBarAssociationV2
{

    public class BookEntry
    {
        public string category { get; set; }
        public string bookId { get; set; }
        public string bookImage { get; set; }
        public string bookName { get; set; }
        public string authorName { get; set; }
        public string datee { get; set; }
    }

    public class BookEntryInsertUpdateDelete
    {
        public static void insertBook(string category, string bookId, string bookImage, string bookName, string authorName, string datee)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "insert into BookEntry(category,bookId,bookImage,bookName,authorName,datee) values('" + category + "','" + bookId + "','" + bookImage + "','" + bookName + "','" + authorName + "','" + datee + "')";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void deleteBook(string bookId)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "delete from BookEntry where bookId = '" + bookId + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void updateBook(string category, string bookId, string bookName, string authorName, string datee)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "update BookEntry set category='" + category + "',bookName='" + bookName + "',authorName='" + authorName + "',datee='" + datee + "' where bookId='" + bookId + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<BookEntry> GetAllBooks()
        {
            List<BookEntry> book = new List<BookEntry>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry1 = "select category,bookId,bookImage,bookName,authorName,datee from BookEntry";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                BookEntry entryBooks = new BookEntry();
                entryBooks.category = (rdr[0].ToString());
                entryBooks.bookId = rdr[1].ToString();
                entryBooks.bookImage = rdr[2].ToString();
                entryBooks.bookName = rdr[3].ToString();
                entryBooks.authorName = rdr[4].ToString();
                entryBooks.datee = rdr[5].ToString();
                book.Add(entryBooks);
            }
            connection.Close();
            return book;
        }
    }
}