using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Serilog;
using System;
using System.Diagnostics;
using System.Security.Cryptography.X509Certificates;

namespace IdentityServer
{
    /*  http://localhost:5000/.well-known/openid-configuration
     *  Permet de visualiser un document permettant aux clients de télécharger 
     *  la configuration nécessaire pour s'authentifier
     */
    public class Startup
    {
        public IWebHostEnvironment Environment { get; }
        private readonly IConfiguration Configuration;

        public Startup(IWebHostEnvironment environment,
                       IConfiguration configuration)
        {
            Environment = environment;
            Configuration = configuration;
        }

        public void ConfigureServices(IServiceCollection services)
        {
            // uncomment, if you want to add an MVC-based UI
            //services.AddControllersWithViews();

            var builder = services.AddIdentityServer()
                .AddInMemoryIdentityResources(Config.Ids)
                .AddInMemoryApiResources(Config.Apis)
                .AddInMemoryClients(Config.Clients);

            // Ajout d'un certificat pour Identity Server 4
            if (Environment.IsDevelopment())
            {
                // SEULEMENT POUR ENV DEVELOPPEMENT
                builder.AddDeveloperSigningCredential();
            }
            else
            {
                X509Certificate2 cert = null;
                using (X509Store certStore = new X509Store(StoreName.My, StoreLocation.CurrentUser))
                {
                    certStore.Open(OpenFlags.ReadOnly);
                    X509Certificate2Collection certCollection = certStore.Certificates.Find(
                        X509FindType.FindByThumbprint,
                        // Replace below with your cert's thumbprint
                        Configuration["CertificationThumbprint"],
                        false);
                    // Get the first cert with the thumbprint
                    if (certCollection.Count > 0)
                    {
                        cert = certCollection[0];
                        Log.Logger.Information($"Successfully loaded cert from registry: {cert.Thumbprint}");
                    }
                }

                // Fallback to DeveloperSigningCredential
                if (cert == null)
                {
                    Log.Logger.Error($"Certification not found, going to use DeveloperSigningCredential NOT GOOD");
                    builder.AddDeveloperSigningCredential();
                }
                else
                {
                    builder.AddSigningCredential(cert);
                } 
            }
        }

        public void Configure(IApplicationBuilder app)
        {
            if (Environment.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            // uncomment if you want to add MVC
            //app.UseStaticFiles();
            //app.UseRouting();

            app.UseIdentityServer();

            // uncomment, if you want to add MVC
            //app.UseAuthorization();
            //app.UseEndpoints(endpoints =>
            //{
            //    endpoints.MapDefaultControllerRoute();
            //});
        }
    }
}
