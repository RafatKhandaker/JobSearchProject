using JobSearch.Core.Contracts;

using System.Configuration;
using System.Net.Mail;

namespace JobSearch.Core.Factories
{
    public class EmailBuilder : IMessageFactory
    {
        private string recipient;
        private readonly string fromAddress;
        private readonly string subject;
        private readonly string body;
        

        public EmailBuilder( string recipient )
        {
            this.recipient = recipient;
            this.fromAddress = ConfigurationManager.AppSettings["ApplicationEmail"].ToString();
            this.subject = ConfigurationManager.AppSettings["MailSubject"].ToString();
            this.body = ConfigurationManager.AppSettings["MailBody"].ToString();
        }

        public MailMessage BuildMessage()
        {
            var message = new MailMessage();
                message.To.Add( new MailAddress( this.recipient ) );
                message.From = new MailAddress( this.fromAddress );
                message.Subject = this.subject;
                message.Body = this.body;

            return message;
        }
    }
}
