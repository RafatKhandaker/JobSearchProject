
namespace JobSearch.Core.Contracts
{
    public interface ILoginService
    {
        bool IfUserExists(string email, string pass);

        bool ExecuteTwoFactorTask(int id);
    }
}
