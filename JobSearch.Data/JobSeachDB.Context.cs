﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JobSearchDBEntities : DbContext
    {
        public JobSearchDBEntities()
            : base("name=JobSearchDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Companies> Companies { get; set; }
        public virtual DbSet<Employee_Login> Employee_Login { get; set; }
        public virtual DbSet<Employee_Roles> Employee_Roles { get; set; }
        public virtual DbSet<Employee_Searches> Employee_Searches { get; set; }
        public virtual DbSet<Job_Reviews> Job_Reviews { get; set; }
        public virtual DbSet<Job_Type> Job_Type { get; set; }
        public virtual DbSet<Jobs_Applied> Jobs_Applied { get; set; }
        public virtual DbSet<Jobs_Hired> Jobs_Hired { get; set; }
        public virtual DbSet<Job_Details> Job_Details { get; set; }
        public virtual DbSet<Salary_Type> Salary_Type { get; set; }
        public virtual DbSet<Employee_Associations_Clubs> Employee_Associations_Clubs { get; set; }
        public virtual DbSet<Employee_Certification> Employee_Certification { get; set; }
        public virtual DbSet<Employee_Education> Employee_Education { get; set; }
        public virtual DbSet<Employee_Key_Skills> Employee_Key_Skills { get; set; }
        public virtual DbSet<Employee_Resumes> Employee_Resumes { get; set; }
        public virtual DbSet<Resume_Work_History> Resume_Work_History { get; set; }
        public virtual DbSet<Work_Authorization_Type> Work_Authorization_Type { get; set; }
        public virtual DbSet<Reference_City> Reference_City { get; set; }
        public virtual DbSet<Reference_Country> Reference_Country { get; set; }
        public virtual DbSet<Reference_State> Reference_State { get; set; }
        public virtual DbSet<Employee_Details> Employee_Details { get; set; }
        public virtual DbSet<Jobs> Jobs { get; set; }
        public virtual DbSet<Location_Address> Location_Address { get; set; }
    }
}
