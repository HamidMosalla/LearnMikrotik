//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class LearnMikrotik_DatabaseEntities : DbContext
{
    public LearnMikrotik_DatabaseEntities()
        : base("name=LearnMikrotik_DatabaseEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<Article> Articles { get; set; }
    public DbSet<Comment> Comments { get; set; }
    public DbSet<HitCounter> HitCounters { get; set; }
    public DbSet<jQuery> jQueries { get; set; }
    public DbSet<Miscellaneou> Miscellaneous { get; set; }
    public DbSet<Picture> Pictures { get; set; }
    public DbSet<Post> Posts { get; set; }
    public DbSet<Rating> Ratings { get; set; }
    public DbSet<sysdiagram> sysdiagrams { get; set; }
    public DbSet<UserProfile> UserProfiles { get; set; }
    public DbSet<Video> Videos { get; set; }
    public DbSet<PicturesURL> PicturesURLs { get; set; }
    public DbSet<Course> Courses { get; set; }
    public DbSet<CourseRegister> CourseRegisters { get; set; }
}
