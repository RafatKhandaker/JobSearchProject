using JobSearch.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface IRestService
    {
        IQueryable<Jobs_Applied> ReturnJobsApplied( int id );

        IQueryable<Jobs_Hired> ReturnJobsHired( int id );

        IQueryable<Job_Reviews> ReturnJobReviews( int id );

        IQueryable<Jobs> ReturnJobMarket();
    }
}
