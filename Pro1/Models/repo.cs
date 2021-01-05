using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pro1.Models
{
    public class repo
    {

        public IEnumerable<Service> service { get; set; }
        public IEnumerable<Portofolio> portofolio { get; set; }
        public IEnumerable<Team> Team { get; set; }
    }
}