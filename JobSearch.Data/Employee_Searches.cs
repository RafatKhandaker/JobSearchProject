//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JobSearch.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee_Searches
    {
        public int Id { get; set; }
        public int JobId { get; set; }
        public int UserId { get; set; }
        public System.DateTime SearchDate { get; set; }
    
        public virtual Employee_Login Employee_Login { get; set; }
        public virtual Jobs Jobs { get; set; }
    }
}
