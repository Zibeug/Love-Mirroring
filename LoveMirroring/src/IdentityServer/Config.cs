// Copyright (c) Brock Allen & Dominick Baier. All rights reserved.
// Licensed under the Apache License, Version 2.0. See LICENSE in the project root for license information.


using IdentityServer4.Models;
using System.Collections.Generic;

namespace IdentityServer
{
    /*  Cette class sert à définir les ressources
     *  Une ressource peut être des utilisateurs ou des API
     */
    public static class Config
    {
        public static IEnumerable<IdentityResource> Ids =>
            new IdentityResource[]
            { 
                new IdentityResources.OpenId()
            };

        // Définition des API
        public static IEnumerable<ApiResource> Apis =>
            new List<ApiResource>
            {
                new ApiResource("apiListMembers", "ListMembers")
            };

        // Définition des clients, Application Web, Application Mobile, ...
        public static IEnumerable<Client> Clients =>
            new List<Client>
            {
                new Client
                {
                    ClientId = "clientConsole",

                    // no interactive user, use the clientid/secret for authentication
                    AllowedGrantTypes = GrantTypes.ClientCredentials,

                    // Définition du mot de passe pour le client
                    ClientSecrets =
                    {
                        new Secret("secret".Sha256())
                    },

                    // Définition des ressources que le client peut accéder
                    AllowedScopes = { "apiListMembers" }
                }
            };

    }
}