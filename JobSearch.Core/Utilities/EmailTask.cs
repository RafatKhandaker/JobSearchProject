using JobSearch.Core.Contracts;
using JobSearch.Core.Factories;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System;

namespace JobSearch.Core
{
    public class EmailTask : IEmailService
    {
        IMessageFactory _EmailBuilder;
        private MailMessage message;
        private SmtpClient smtp;
        private readonly string userCred;
        private readonly string passCred;
        private readonly string smtpHost;

        public EmailTask()
        {
            this.userCred = ConfigurationManager.AppSettings["ApplicationEmail"].ToString();
            this.passCred = ConfigurationManager.AppSettings["EmailHostPass"].ToString();
            this.smtpHost = ConfigurationManager.AppSettings["GmailHostprovider"].ToString();
            this.smtp = new SmtpClient
            {
                Credentials = new NetworkCredential { UserName = this.userCred, Password = this.passCred },
                Host = this.smtpHost,
                Port = 587,
                EnableSsl = true,
            };
        }


        public EmailTask AddRecipientId( string email, Guid? key )
        {
            this._EmailBuilder = new EmailBuilder( email, key );
            this.message = this._EmailBuilder.BuildMessage();

            return this;
        }

        public void SendVerificationLink()
        {
            try
            {
                this.smtp.SendMailAsync(this.message);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
