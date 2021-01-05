using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Pro1.Startup))]
namespace Pro1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
