
using JobSearch.Data.Models;

namespace JobSearch.Core.Contracts
{
    public interface ILoginService
    {
        bool IfUserExists(string email, string pass);

        bool ExecuteTwoFactorTask(int id);

        void RegisterNewUser( UserModel newProfile );
    }
}
