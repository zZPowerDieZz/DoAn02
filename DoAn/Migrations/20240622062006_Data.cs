using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DoAn.Migrations
{
    public partial class Data : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Logo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DisplayOrder = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Orders",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CustomerName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Address = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Phone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Total = table.Column<double>(type: "float", nullable: false),
                    State = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Orders", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Price = table.Column<double>(type: "float", nullable: false),
                    CategoryId = table.Column<int>(type: "int", nullable: false),
                    ImageUrl = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Products_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "OrderDetails",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OrderId = table.Column<int>(type: "int", nullable: false),
                    ProductId = table.Column<int>(type: "int", nullable: false),
                    Quantity = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OrderDetails", x => x.Id);
                    table.ForeignKey(
                        name: "FK_OrderDetails_Orders_OrderId",
                        column: x => x.OrderId,
                        principalTable: "Orders",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OrderDetails_Products_ProductId",
                        column: x => x.ProductId,
                        principalTable: "Products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Categories",
                columns: new[] { "Id", "DisplayOrder", "Logo", "Name" },
                values: new object[,]
                {
                    { 1, 1, null, "Porsche" },
                    { 2, 2, null, "Bentley" },
                    { 3, 3, null, "BMW" },
                    { 4, 4, null, "Ford" },
                    { 5, 5, null, "Lamborghini" },
                    { 6, 6, null, "Maserati" },
                    { 7, 7, null, "Mecesdes" },
                    { 8, 8, null, "Ferrari" },
                    { 9, 9, null, "Aston Martin" },
                    { 10, 10, null, "MCLaren" },
                    { 11, 11, null, "Bugatti" },
                    { 12, 12, null, "Koenigsegg" },
                    { 13, 13, null, "Pagani" }
                });

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "CategoryId", "Description", "ImageUrl", "Name", "Price" },
                values: new object[,]
                {
                    { 1, 1, null, null, "Porsche Macan ", 135000.0 },
                    { 26, 7, null, null, "Mercedes AMG G63", 471000.0 },
                    { 27, 7, null, null, "Mercedes Benz EQB", 92000.0 },
                    { 28, 8, null, null, "Ferrari 812 GTS", 342000.0 },
                    { 29, 8, null, null, "Ferrari F8 Tributo", 241000.0 },
                    { 30, 8, null, null, "Ferrari Purosangue", 1604000.0 },
                    { 31, 9, null, null, "Aston Martin Vantage", 600800.0 },
                    { 32, 9, null, null, "Aston Martin DB11 V8 Coupe", 630000.0 },
                    { 33, 9, null, null, "Aston Martin DBS Superleggera Volante", 314000.0 },
                    { 34, 9, null, null, "Aston Martin DBX", 642000.0 },
                    { 35, 10, null, null, "McLaren 600LT", 242500.0 },
                    { 36, 10, null, null, "McLaren Senna", 4711200.0 },
                    { 37, 10, null, null, "McLaren Speedtail", 2100000.0 },
                    { 38, 11, null, null, "Bugatti La Voiture Noire", 18680000.0 },
                    { 39, 11, null, null, "Bugatti Centodieci", 9000000.0 },
                    { 40, 11, null, null, "Bugatti Bolide", 4713600.0 },
                    { 41, 12, null, null, "Koenigsegg Agera R", 2100000.0 },
                    { 42, 12, null, null, "Koenigsegg Regera", 5500000.0 },
                    { 43, 12, null, null, "Koenigsegg Jesko", 2800000.0 },
                    { 44, 13, null, null, "Pagani Huayra BC Roadster", 3500000.0 },
                    { 25, 7, null, null, "Mercedes AMG A35 4MATIC", 97400.0 },
                    { 24, 6, null, null, "Maserati MC20", 642000.0 },
                    { 23, 6, null, null, "Maserati Ghibli Hybrid", 240000.0 },
                    { 22, 6, null, null, "Maserati Grecale", 169000.0 },
                    { 2, 1, null, null, "Porsche Panamera Turbo S", 490000.0 },
                    { 3, 1, null, null, "Porsche 911 Targa 4S", 395000.0 },
                    { 4, 1, null, null, "Porsche Taycan", 171000.0 },
                    { 5, 1, null, null, "Porsche 718 Boxster", 159000.0 },
                    { 6, 2, null, null, "Bentley Mulsanne", 306000.0 },
                    { 7, 2, null, null, "Bentley Continental GT Speed", 257000.0 },
                    { 8, 2, null, null, "Bentley Mulliner Bacalar", 1764000.0 },
                    { 9, 3, null, null, "BMW 330i", 73000.0 },
                    { 10, 3, null, null, "BMW i7", 289000.0 },
                    { 45, 13, null, null, "Pagani Zonda R", 1900000.0 },
                    { 11, 3, null, null, "BMW i8", 281000.0 },
                    { 13, 3, null, null, "BMW XM", 441000.0 },
                    { 14, 4, null, null, "Ford Explorer", 98000.0 },
                    { 15, 4, null, null, "Ford Transit", 34000.0 },
                    { 16, 4, null, null, "Ford Territory Titanium X", 39000.0 },
                    { 17, 5, null, null, "Lamborghini Aventador SVJ", 2405000.0 },
                    { 18, 5, null, null, "Lamborghini Aventador LP700-4", 1043000.0 },
                    { 19, 5, null, null, "Lamborghini Urus Performante", 662000.0 }
                });

            migrationBuilder.InsertData(
                table: "Products",
                columns: new[] { "Id", "CategoryId", "Description", "ImageUrl", "Name", "Price" },
                values: new object[,]
                {
                    { 20, 5, null, null, "Lamborghini Huracan LP580-2", 562000.0 },
                    { 21, 5, null, null, "Lamborghini Huracan STO", 305000.0 },
                    { 12, 3, null, null, "BMW X3 xDrive20i Msport", 85000.0 },
                    { 46, 13, null, null, "Pagani Zonda HP Barchetta", 17500000.0 }
                });

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetails_OrderId",
                table: "OrderDetails",
                column: "OrderId");

            migrationBuilder.CreateIndex(
                name: "IX_OrderDetails_ProductId",
                table: "OrderDetails",
                column: "ProductId");

            migrationBuilder.CreateIndex(
                name: "IX_Products_CategoryId",
                table: "Products",
                column: "CategoryId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "OrderDetails");

            migrationBuilder.DropTable(
                name: "Orders");

            migrationBuilder.DropTable(
                name: "Products");

            migrationBuilder.DropTable(
                name: "Categories");
        }
    }
}
