using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public class Rent
{
    static SqlCommand cmd;
    static SqlConnection DataConnection;
    static SqlDataReader Reader;
    static SqlDataAdapter Adapter;
    static DataSet DSet;
    static int i;
    static string ConString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Ashish\GetOnRent\Rent\App_Data\Rent.mdf;Integrated Security=True";

    public static int InsertRec(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {

            return i = 0;
        }
    }

    public static int Getrec(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            i = (int)cmd.ExecuteScalar();
            return i;
        }
        catch (Exception ex)
        {

            return i = 0;
        }
    }

    public static int DeltRec(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {

            return i = 0;
        }
    }

    public static int UpdateRec(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            i = cmd.ExecuteNonQuery();
            return i;
        }
        catch (Exception ex)
        {

            return i = 0;
        }
    }

    public static SqlDataReader ReadData(string st)
    {

        DataConnection = new SqlConnection(ConString);
        DataConnection.Open();
        cmd = new SqlCommand(st, DataConnection);
        Reader = cmd.ExecuteReader();
        return Reader;

    }

    public static DataSet D_set(string st, string tname)
    {

        DataConnection = new SqlConnection(ConString);
        DataConnection.Open();
        cmd = new SqlCommand(st, DataConnection);
        Adapter = new SqlDataAdapter(cmd);
        DSet = new DataSet();
        Adapter.Fill(DSet, tname);
        return DSet;

    }

    public static int ScalarFunctions(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            Object Scalar = cmd.ExecuteScalar();
            i = Convert.ToInt32(Scalar.ToString());
            return i + 1;
        }
        catch (Exception ex)
        {
            i = 1;
            return i;
        }
    }

    public static int ScalarFunctionsSumMinMax(string st)
    {
        try
        {
            DataConnection = new SqlConnection(ConString);
            DataConnection.Open();
            cmd = new SqlCommand(st, DataConnection);
            Object Scalar = cmd.ExecuteScalar();
            i = Convert.ToInt32(Scalar.ToString());
            return i;
        }
        catch (Exception ex)
        {
            i = 0;
            return i;
        }
    }
    //public SqlDataReader fill_dropdown(string st, DropDownList drop)
    //{
    //    try
    //    {
            
    //        cmd = new SqlCommand(st, );
    //        dr = cm.ExecuteReader();
    //        if (dr.HasRows == true)
    //        {
    //            while (dr.Read() == true)
    //            {
    //                if (dr[0].ToString().Trim() != "" || dr[0].ToString().Trim().Length != 0)
    //                {
    //                    drop.Items.Add(dr[0].ToString().Trim());
    //                }
    //            }

    //        }
    //        dr.Dispose();
    //    }
    //    catch (Exception) { }
    //    return dr;
    //    db.Close();
    //}
   
   
}


