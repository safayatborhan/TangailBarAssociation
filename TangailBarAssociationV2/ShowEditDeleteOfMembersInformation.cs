using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace TangailBarAssociationV2
{
    public class Member
    {
        OleDbConnection connection = new OleDbConnection();
        public string memberID { get; set; }
        public string memberImage { get; set; }
        public string memberName { get; set; }
        public string memberFatherName { get; set; }
        public string memberDateOfBirth { get; set; }
        public string memberDesignation { get; set; }
        public string memberDistrict { get; set; }
        public string memberPresentAddress { get; set; }
        public string memberPhoneNumber { get; set; }
        public string memberStatus { get; set; }
        public string memberNominee { get; set; }
        public string memberDateOfMembership { get; set; }
        public string memberDateOfEnrolment { get; set; }
        

    }
    public class ShowEditDeleteOfMembersInformation
    {
        public static void UpdateMember(string memberID, string memberName, string memberFatherName, string memberDateOfBirth, string memberDesignation, string memberDistrict, string memberPresentAddress, string memberPhoneNumber, string memberStatus, string memberNominee, string memberDateOfMembership, string memberDateOfEnrolment, string memberImage)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "update MemeberInformation set memberName='" + memberName + "',memberFatherName='" + memberFatherName + "',memberDateOfBirth='" + memberDateOfBirth + "',memberDesignation='" + memberDesignation + "',memberDistrict='" + memberDistrict + "',memberPresentAddress='" + memberPresentAddress + "',memberPhoneNumber='" + memberPhoneNumber + "',memberStatus='" + memberStatus + "',memberNominee='" + memberNominee + "',memberDateOfMembership='" + memberDateOfMembership + "',memberDateOfEnrolment='" + memberDateOfEnrolment + "' where memberID='" + memberID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static void DeleteMember(string memberID)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry = "delete from MemeberInformation where memberID='" + memberID + "'";
            OleDbCommand cmd = new OleDbCommand(qry, connection);
            cmd.ExecuteNonQuery();
            connection.Close();
        }
        public static List<Member> GetAllMembers()
        {
            List<Member> listMember = new List<Member>();
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|TagailBarAssociation.mdb;";
            connection.Open();
            string qry1 = "select memberID,memberImage,memberName,memberFatherName,memberDateOfBirth,memberDesignation,memberDistrict,memberPresentAddress,memberPhoneNumber,memberStatus,memberNominee,memberDateOfMembership,memberDateOfEnrolment from MemeberInformation ORDER BY memberID";
            OleDbCommand cmd = new OleDbCommand(qry1, connection);
            OleDbDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Member member = new Member();
                member.memberID = rdr[0].ToString();
                member.memberImage = rdr[1].ToString();
                member.memberName = rdr[2].ToString();
                member.memberFatherName = rdr[3].ToString();
                member.memberDateOfBirth = rdr[4].ToString();
                member.memberDesignation = rdr[5].ToString();
                member.memberDistrict = rdr[6].ToString();
                member.memberPresentAddress = rdr[7].ToString();
                member.memberPhoneNumber = rdr[8].ToString();
                member.memberStatus = rdr[9].ToString();
                member.memberNominee = rdr[10].ToString();
                member.memberDateOfMembership = rdr[11].ToString();
                member.memberDateOfEnrolment = rdr[12].ToString();
                listMember.Add(member);
            }
            connection.Close();
            return listMember;
        }
    }
}