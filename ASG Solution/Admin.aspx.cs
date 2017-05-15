using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASG_Solution
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Server.Transfer("Login.aspx", true);
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        //https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.formview.iteminserted.aspx
        protected void FormView1_ItemInserted(Object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception == null)
            {
                if (e.AffectedRows == 1)
                {
                    MessageLabel.Text = "Record inserted successfully.";
                }
                else
                {
                    MessageLabel.Text = "An error occurred during the insert operation.";

                    e.KeepInInsertMode = true;
                }
            }
            else
            {
                MessageLabel.Text = e.Exception.Message;

                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
            }
        }

        protected void FormView2_ItemUpdated(Object sender, FormViewUpdatedEventArgs e)
        {
            if (e.Exception == null)
            {
                if (e.AffectedRows == 1)
                {
                    MessageLabel.Text = "Record updated successfully.";
                }
                else
                {
                    MessageLabel.Text = "An error occurred during the update operation.";

                    e.KeepInEditMode = true;
                }
            }
            else
            {
                MessageLabel.Text = e.Exception.Message;

                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
        }

        protected void GridViewProducts_RowDeleted(Object sender, GridViewDeletedEventArgs e)
        {

            // Display whether the delete operation succeeded.
            if (e.Exception == null)
            {
                MessageLabel.Text = "Row deleted successfully.";
            }
            else
            {
                MessageLabel.Text = "An error occurred while attempting to delete the row.";
                e.ExceptionHandled = true;
            }

        }


    }
}