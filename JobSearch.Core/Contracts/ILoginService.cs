using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface ILoginService
    {
        bool IfUserExists(string email, string pass);

        void ExecuteTwoFactorTask(int id);
    }
}
