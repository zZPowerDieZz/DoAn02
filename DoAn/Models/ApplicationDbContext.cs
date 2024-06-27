using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DoAn.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }
        public DbSet<Category> Categories { set; get; }
        public DbSet<Product> Products { set; get; }

        public DbSet<Order> Orders { set; get; }
        public DbSet<OrderDetail> OrderDetails { set; get; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //seed data to table Categories
            modelBuilder.Entity<Category>().HasData(
            new Category { Id = 1, Name = "Porsche", DisplayOrder = 1 },
            new Category { Id = 2, Name = "Bentley", DisplayOrder = 2 },
            new Category { Id = 3, Name = "BMW", DisplayOrder = 3 },
            new Category { Id = 4, Name = "Ford", DisplayOrder =4  },
            new Category { Id = 5, Name = "Lamborghini", DisplayOrder =5  },
            new Category { Id = 6, Name = "Maserati", DisplayOrder =6  },
            new Category { Id = 7, Name = "Mecesdes", DisplayOrder =7  },
            new Category { Id = 8, Name = "Ferrari", DisplayOrder =8  },
            new Category { Id = 9, Name = "Aston Martin", DisplayOrder =9  },
            new Category { Id = 10, Name = "MCLaren", DisplayOrder =10  },
            new Category { Id = 11, Name = "Bugatti", DisplayOrder =11  },
            new Category { Id = 12, Name = "Koenigsegg", DisplayOrder =12  },
            new Category { Id = 13, Name = "Pagani", DisplayOrder = 13 }
            );
            //seed data to table Product
            modelBuilder.Entity<Product>().HasData(
            new Product { Id = 1, Name = "Porsche Macan ", Price = 135000, CategoryId =  1},
            new Product { Id = 2, Name = "Porsche Panamera Turbo S", Price = 490000, CategoryId =  1},
            new Product { Id = 3, Name = "Porsche 911 Targa 4S", Price = 395000, CategoryId =  1},
            new Product { Id = 4, Name = "Porsche Taycan", Price = 171000, CategoryId =  1},
            new Product { Id = 5, Name = "Porsche 718 Boxster", Price = 159000, CategoryId =  1},
            new Product { Id = 6, Name = "Bentley Mulsanne", Price = 306000, CategoryId =  2},
            new Product { Id = 7, Name = "Bentley Continental GT Speed", Price = 257000, CategoryId =  2},
            new Product { Id = 8, Name = "Bentley Mulliner Bacalar", Price = 1764000, CategoryId =  2},
            new Product { Id = 9, Name = "BMW 330i", Price = 73000, CategoryId =  3},
            new Product { Id = 10, Name = "BMW i7", Price = 289000, CategoryId =  3},
            new Product { Id = 11, Name = "BMW i8", Price = 281000, CategoryId =  3},
            new Product { Id = 12, Name = "BMW X3 xDrive20i Msport", Price = 85000, CategoryId =  3},
            new Product { Id = 13, Name = "BMW XM", Price = 441000, CategoryId =  3},
            new Product { Id = 14, Name = "Ford Explorer", Price = 98000, CategoryId =  4},
            new Product { Id = 15, Name = "Ford Transit", Price = 34000, CategoryId =  4},
            new Product { Id = 16, Name = "Ford Territory Titanium X", Price = 39000, CategoryId =  4},
            new Product { Id = 17, Name = "Lamborghini Aventador SVJ", Price = 2405000, CategoryId =  5},
            new Product { Id = 18, Name = "Lamborghini Aventador LP700-4", Price = 1043000, CategoryId =  5},
            new Product { Id = 19, Name = "Lamborghini Urus Performante", Price = 662000, CategoryId =  5},
            new Product { Id = 20, Name = "Lamborghini Huracan LP580-2", Price = 562000, CategoryId =  5},
            new Product { Id = 21, Name = "Lamborghini Huracan STO", Price = 305000, CategoryId =  5},
            new Product { Id = 22, Name = "Maserati Grecale", Price = 169000, CategoryId = 6 },
            new Product { Id = 23, Name = "Maserati Ghibli Hybrid", Price = 240000, CategoryId =  6},
            new Product { Id = 24, Name = "Maserati MC20", Price = 642000, CategoryId =  6},
            new Product { Id = 25, Name = "Mercedes AMG A35 4MATIC", Price = 97400, CategoryId =  7},
            new Product { Id = 26, Name = "Mercedes AMG G63", Price = 471000, CategoryId =  7},
            new Product { Id = 27, Name = "Mercedes Benz EQB", Price = 92000, CategoryId =  7},
            new Product { Id = 28, Name = "Ferrari 812 GTS", Price = 342000, CategoryId =  8},
            new Product { Id = 29, Name = "Ferrari F8 Tributo", Price = 241000, CategoryId =  8},
            new Product { Id = 30, Name = "Ferrari Purosangue", Price = 1604000, CategoryId =  8},
            new Product { Id = 31, Name = "Aston Martin Vantage", Price = 600800, CategoryId =  9},
            new Product { Id = 32, Name = "Aston Martin DB11 V8 Coupe", Price = 630000, CategoryId =  9},
            new Product { Id = 33, Name = "Aston Martin DBS Superleggera Volante", Price = 314000, CategoryId =  9},
            new Product { Id = 34, Name = "Aston Martin DBX", Price = 642000, CategoryId =  9},
            new Product { Id = 35, Name = "McLaren 600LT", Price = 242500, CategoryId =10  },
            new Product { Id = 36, Name = "McLaren Senna", Price = 4711200, CategoryId =10  },
            new Product { Id = 37, Name = "McLaren Speedtail", Price = 2100000, CategoryId =10  },
            new Product { Id = 38, Name = "Bugatti La Voiture Noire", Price = 18680000, CategoryId =11  },
            new Product { Id = 39, Name = "Bugatti Centodieci", Price =9000000 , CategoryId =11  },
            new Product { Id = 40, Name = "Bugatti Bolide", Price = 4713600, CategoryId =11  },
            new Product { Id = 41, Name = "Koenigsegg Agera R", Price =2100000 , CategoryId =12  },
            new Product { Id = 42, Name = "Koenigsegg Regera", Price =5500000 , CategoryId =12  },
            new Product { Id = 43, Name = "Koenigsegg Jesko", Price = 2800000, CategoryId =12  },
            new Product { Id = 44, Name = "Pagani Huayra BC Roadster", Price =3500000 , CategoryId =13  },
            new Product { Id = 45, Name = "Pagani Zonda R", Price =1900000 , CategoryId =13  },
            new Product { Id = 46, Name = "Pagani Zonda HP Barchetta", Price =17500000 , CategoryId =13  }
            );
        }
    }
}
