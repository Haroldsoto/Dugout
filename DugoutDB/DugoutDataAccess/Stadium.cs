//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DugoutDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Stadium
    {
        public Stadium()
        {
            this.Matches = new HashSet<Match>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
    
        public virtual ICollection<Match> Matches { get; set; }
    }
}
