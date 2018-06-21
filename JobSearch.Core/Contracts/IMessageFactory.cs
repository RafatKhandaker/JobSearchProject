using System.Net.Mail;

namespace JobSearch.Core.Contracts
{
    public interface IMessageFactory
    {
        MailMessage BuildMessage();
    }
}
