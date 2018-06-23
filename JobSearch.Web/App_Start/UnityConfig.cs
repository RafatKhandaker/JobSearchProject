using JobSearch.Core;
using JobSearch.Core.Contracts;
using JobSearch.Core.Factories;
using System;
using System.Web.Mvc;
using Unity;
using Unity.AspNet.Mvc;

namespace JobSearch.Web
{
    /// <summary>
    /// Specifies the Unity configuration for the main container.
    /// </summary>
    public static class UnityConfig
    {
        #region Unity Container
        private static Lazy<IUnityContainer> container =
          new Lazy<IUnityContainer>(() =>
          {
              var container = new UnityContainer();
              RegisterTypes(container);
              return container;
          });

        /// <summary>
        /// Configured Unity Container.
        /// </summary>
        public static IUnityContainer Container => container.Value;
        #endregion

        /// <summary>
        /// Registers the type mappings with the Unity container.
        /// </summary>
        /// <param name="container">The unity container to configure.</param>
        /// <remarks>
        /// There is no need to register concrete types such as controllers or
        /// API controllers (unless you want to change the defaults), as Unity
        /// allows resolving a concrete type even if it was not previously
        /// registered.
        /// </remarks>
        public static void RegisterTypes(IUnityContainer container)
        {

            // register all your components with the container here 
            // it is NOT necessary to register your controllers 

            // e.g. container.RegisterType<ITestService, TestService>(); 

            container.RegisterType<IDBService, DataTask>();
            container.RegisterType<IEmailService, EmailTask>();
            container.RegisterType<IMessageFactory, EmailBuilder>();
            container.RegisterType<IRestService, DataTask>();



            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}