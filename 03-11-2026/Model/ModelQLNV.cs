using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace _03_11_2026.Model
{
    public partial class ModelQLNV : DbContext
    {
        public ModelQLNV()
            : base("name=ModelQLNV")
        {
        }

        public virtual DbSet<Bophan> Bophans { get; set; }
        public virtual DbSet<ChucVu> ChucVus { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Bophan>()
                .HasMany(e => e.NhanViens)
                .WithRequired(e => e.Bophan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ChucVu>()
                .HasMany(e => e.NhanViens)
                .WithRequired(e => e.ChucVu)
                .WillCascadeOnDelete(false);
        }
    }
}
