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
        private string streetAddress;
        private int zipCode;
        private string city;
        private string state;
        private string country;
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
            string streetAddress,
            int zipCode,
            string city,
            string state,
            string country,
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
            this.streetAddress = streetAddress;
            this.city = city;
            this.state = state;
            this.country = country;
            this.jobTitleId = jobTitleId;
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public int RoleId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string StreetAddress { get; set; }
        public int ZipCode { get; set; }
        public int City { get; set; }
        public int State { get; set; }
        public int Country { get; set; }
        public int JobTitleId { get; set; }

    }
}
