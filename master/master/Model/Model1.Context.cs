﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace master.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class masterfloorEntities : DbContext
    {
        public masterfloorEntities()
            : base("name=masterfloorEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<House> House { get; set; }
        public virtual DbSet<IndexA> IndexA { get; set; }
        public virtual DbSet<MatType> MatType { get; set; }
        public virtual DbSet<Obl> Obl { get; set; }
        public virtual DbSet<Partner> Partner { get; set; }
        public virtual DbSet<PartnerProducts> PartnerProducts { get; set; }
        public virtual DbSet<Partners> Partners { get; set; }
        public virtual DbSet<Product1> Product1 { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<ProductType> ProductType { get; set; }
        public virtual DbSet<Street> Street { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TypePartners> TypePartners { get; set; }
        public virtual DbSet<TypeProduct> TypeProduct { get; set; }
    }
}
