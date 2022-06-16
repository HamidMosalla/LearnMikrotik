using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Admin_UsersAndRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            // Bind the users and roles
            BindRolesToList();

            // Display those users belonging to the currently selected role
            DisplayUsersBelongingToRole();
        }
    }

    private void BindRolesToList()
    {
        // Get all of the roles
        string[] roles = Roles.GetAllRoles();

        RoleList.DataSource = roles;
        RoleList.DataBind();
    }

    MembershipUserCollection users = Membership.GetAllUsers();

    protected void RoleList_SelectedIndexChanged(object sender, EventArgs e)
    {
        DisplayUsersBelongingToRole();
    }

    private void DisplayUsersBelongingToRole()
    {
        // Get the selected role
        string selectedRoleName = RoleList.SelectedValue;

        // Get the list of usernames that belong to the role
        string[] usersBelongingToRole = Roles.GetUsersInRole(selectedRoleName);

        // Bind the list of users to the GridView
        RolesUserList.DataSource = usersBelongingToRole;
        RolesUserList.DataBind();
    }

    protected void RolesUserList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Get the selected role
        string selectedRoleName = RoleList.SelectedValue;

        // Reference the UserNameLabel
        Label UserNameLabel = RolesUserList.Rows[e.RowIndex].FindControl("UserNameLabel") as Label;

        if (!string.IsNullOrWhiteSpace(UserNameLabel.Text))
        {
            // Remove the user from the role
            Roles.RemoveUserFromRole(UserNameLabel.Text, selectedRoleName);
        }
        else
        {
            ActionStatus.Text = "خطا، لطفا دوباره تلاش کنید";
        }

        // Refresh the GridView
        DisplayUsersBelongingToRole();

        // Display a status message
        ActionStatus.Text = string.Format("User {0} was removed from role {1}.", UserNameLabel.Text, selectedRoleName);

       
    }

    protected void AddUserToRoleButton_Click(object sender, EventArgs e)
    {
        // Get the selected role and username
        string selectedRoleName = RoleList.SelectedValue;
        string userNameToAddToRole = UserNameToAddToRole.Text;

        // Make sure that a value was entered
        if (userNameToAddToRole.Trim().Length == 0)
        {
            ActionStatus.Text = "You must enter a username in the textbox.";
            return;
        }

        // Make sure that the user exists in the system
        MembershipUser userInfo = Membership.GetUser(userNameToAddToRole);
        if (userInfo == null)
        {
            ActionStatus.Text = string.Format("The user {0} does not exist in the system.", userNameToAddToRole);
            return;
        }

        // Make sure that the user doesn't already belong to this role
        if (Roles.IsUserInRole(userNameToAddToRole, selectedRoleName))
        {
            ActionStatus.Text = string.Format("User {0} already is a member of role {1}.", userNameToAddToRole, selectedRoleName);
            return;
        }

        // If we reach here, we need to add the user to the role
        Roles.AddUserToRole(userNameToAddToRole, selectedRoleName);

        // Clear out the TextBox
        UserNameToAddToRole.Text = string.Empty;

        // Refresh the GridView
        DisplayUsersBelongingToRole();

        // Display a status message
        ActionStatus.Text = string.Format("User {0} was added to role {1}.", userNameToAddToRole, selectedRoleName);

       
    }
    
}