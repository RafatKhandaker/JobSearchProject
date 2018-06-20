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
        Jobs_Applied ReturnJobsApplied( int id );

        Jobs_Hired ReturnJobsHired( int id );

        Job_Reviews ReturnJobReviews( int id );

        Jobs ReturnJobMarket();
    }
}
