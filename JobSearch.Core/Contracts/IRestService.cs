﻿using JobSearch.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface IRestService
    {
        IQueryable<Jobs_Applied> ReturnJobsApplied( int userId );

        IQueryable<Jobs_Hired> ReturnJobsHired( int userId );

        IQueryable<Job_Reviews> ReturnJobReviews( int userId );

        IQueryable<Jobs> ReturnJobMarket();

        IQueryable<Jobs> ReturnJobMarket( int companyId );

    }
}
