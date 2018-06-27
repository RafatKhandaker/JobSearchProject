using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Data.Models
{
    public class UserModel
    {
        private string uname;
        private string pword;
        private int roleId;
        private string fName;
        private string lName;
        private string email;
        private string address;
        private int jobTitleId;

        public UserModel() { }

        public UserModel
        (
            string uname, 
            string pword,
            int roleId,
            string fName,
            string lName,
            string email,
            string address,
            int jobTitleId,
            int jobType
        )
        {
            this.uname = uname;
            this.pword = pword;
            this.roleId = roleId;
            this.fName = fName;
            this.lName = lName;
            this.email = email;
            this.address = address;
            this.jobTitleId = jobTitleId;
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public int RoleId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public int JobTitleId { get; set; }

    }
}
