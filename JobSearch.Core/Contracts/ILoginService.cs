
namespace JobSearch.Core.Contracts
{
    public interface ILoginService
    {
        bool IfUserExists(string email, string pass);

        void ExecuteTwoFactorTask(int id);
    }
}
