using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TechCoreSolutions.Startup))]
namespace TechCoreSolutions
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
