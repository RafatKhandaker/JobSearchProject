﻿using JobSearch.Core.Contracts;
using System;
using JobSearch.Data;
using System.Linq;
using JobSearch.Data.Models;
using System.Collections.Generic;

namespace JobSearch.Core
{
    public class ServiceTask : IDBService, IRestService, ILoginService, IDisposable
    {
        IEmailService _EmailService;
        JobSearchDBEntities DB;

        public ServiceTask() { }

        public ServiceTask( IEmailService _EmailService )
        {
            this._EmailService = _EmailService;
            this.DB = new JobSearchDBEntities();
        }

        /* IDBService Implements -- Casual Database flow task */
   
        public int RetrieveLoginId(string user, string password)
        {
            try
            {
                return Convert.ToInt32(
                    DB.Employee_Login.Where(w => w.Username == user && w.Password == password).Select(s => s.Id)
                    );
            }
            catch (Exception e) { throw e;  }
        }


        public bool ValidateTwoFactorKey(string user, Guid key)
        {
           return DB.Employee_Login.Where(w => w.TwoFKey == key && w.Username == user).Any();
         }


        /* IRestService Implements -- API Rest Controller */
        public IQueryable<Jobs> ReturnJobMarket()
        {
            return DB.Jobs.Select(s => s).OrderByDescending(o => o.DatePosted).Take(10000);       
        }

        public IQueryable<Job_Reviews> ReturnJobReviews(int id)
        {
            return DB.Job_Reviews.Where(w => w.JobId == id).OrderByDescending(o => o.Timestamp).Take(10000);
        }

        public IQueryable<Jobs_Applied> ReturnJobsApplied(int id)
        {
            return DB.Jobs_Applied.Where(w => w.ApplicantId == id).OrderByDescending(o => o.DateApplied).Take(10000);
        }

        public IQueryable<Jobs> ReturnJobMarket(int companyId)
        {
            return DB.Jobs.Where(w => w.CompanyId == companyId).OrderByDescending(o => o.DatePosted).Take(10000);
        }

        public IQueryable<Jobs_Hired> ReturnJobsHired(int id)
        {
            return DB.Jobs_Hired.Where(w => w.EmployeeId == id).OrderByDescending(o => o.DateHired).Take(10000);
        }

        public void Dispose()
        {
            DB.Dispose();
        }


        /* Login Tasks */
        public bool IfUserExists(string email, string pass)
        {
            return DB.Employee_Login.Where(w => w.Username == email && w.Password == pass).Any();
        }


        public bool ExecuteTwoFactorTask(int id)
        {
            var query = DB.Employee_Details.Where(w => w.LoginId == id);
            try
            {
                _EmailService
                    .AddRecipientId(query.Select(s => s.Email).FirstOrDefault(), query.Select(s => s.Employee_Login.TwoFKey).FirstOrDefault())
                    .SendVerificationLink();
                return true;
            }
            catch (Exception e) { return false; }
        }

        public void RegisterNewUser( UserModel newProfile )
        {
            ICollection<Employee_Details> eDetailsModel = new List<Employee_Details>();
            var locationKey = Guid.NewGuid();

            DB.Location_Address.Add(new Location_Address
            {
                 UniqueId = locationKey,
                 Street = newProfile.StreetAddress,
                 ZipCode = newProfile.ZipCode,
                 City = newProfile.City,
                 State = newProfile.State,
                 Country = newProfile.Country,
            });

            eDetailsModel.Add(new Employee_Details
            {
                Firstname = newProfile.FirstName,
                Lastname = newProfile.LastName,
                Email = newProfile.Email,
                SignUpDate = DateTime.Now,
                LocationId = locationKey,
                JobTitleId = newProfile.JobTitleId
             });

            DB.Employee_Login.Add( new Employee_Login
            {
                Username = newProfile.Username,
                Password = newProfile.Password,
                RoleId = newProfile.RoleId,
                Employee_Details = eDetailsModel,
                TwoFKey = Guid.NewGuid()
            });
            
            /* my interpretation ..  the database will throw an error 
             * for users that try to insert when tables are locked by 
             * other users attempting to insert data anyay.. 
             * but async will throw an error if duplicate primary key are 
             * inserted  -- Has to be handled later  . but also.. 
             * if async.. then the sql will autoincrement for user..thus no errors */

            try { DB.SaveChangesAsync(); } catch(Exception e) { throw e; }
                           
        }
    }
}
