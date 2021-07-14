using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using MachineTest.Interfaces;
using MachineTest.Models;
using Microsoft.Data.SqlClient;

namespace MachineTest.Repositories
{
    public class SaleRepository : ISaleRepository
    {
        private readonly ISqlService sqlService;
        private readonly ILoggerService loggerService;
        public SaleRepository(ISqlService sqlService, ILoggerService loggerService)
        {
            this.sqlService = sqlService;
            this.loggerService = loggerService;
        }

        public async Task<Sale> Get(int saleId)
        {
            if (saleId == 0) return null;

            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetSale";
                    command.Parameters.AddWithValue("@saleId", saleId);
                    DataSet saleData = await sqlService.GetData(command);

                    if (saleData.Tables.Count == 0) return null;
                    DataTable saleTable = saleData.Tables[0];

                    if (saleTable.Rows.Count == 0) return null;
                    DataRow saleRow = saleTable.Rows[0];

                    return new Sale()
                    {
                        SaleId = saleRow.Field<int>("SaleId"),
                        CustomerName = saleRow.Field<string>("CustomerName"),
                        CountryCode = saleRow.Field<string>("CountryCode"),
                        RegionCode = saleRow.Field<string>("RegionCode"),
                        CityCode = saleRow.Field<int>("CityCode"),
                        Date = saleRow.Field<DateTime>("Date"),
                        ProductId = saleRow.Field<int>("ProductId"),
                        Price = saleRow.Field<decimal>("Price"),
                        Quantity = saleRow.Field<int>("Quantity"),
                        Total = saleRow.Field<decimal>("Total")
                    };
                }
            }
            catch (System.Exception ex)
            {
                loggerService.Log(new Dictionary<string, string>(){
                    {"exception", ex.Message},
                    {"stack trace", ex.StackTrace}
                });

                return null;
            }
        }

        public async Task<Sale> Save(Sale sale)
        {
            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spSaveSale";
                    command.Parameters.AddWithValue("@saleId", sale.SaleId);
                    command.Parameters.AddWithValue("@customerName", sale.CustomerName);
                    command.Parameters.AddWithValue("@countryCode", sale.CountryCode);
                    command.Parameters.AddWithValue("@regionCode", sale.RegionCode);
                    command.Parameters.AddWithValue("@cityCode", sale.CityCode);
                    command.Parameters.AddWithValue("@date", sale.Date);
                    command.Parameters.AddWithValue("@productId", sale.ProductId);
                    command.Parameters.AddWithValue("@price", sale.Price);
                    command.Parameters.AddWithValue("@quantity", sale.Quantity);
                    command.Parameters.AddWithValue("@total", sale.Total);
                    DataSet saleData = await sqlService.GetData(command);

                    if (saleData.Tables.Count == 0) return null;
                    DataTable saleTable = saleData.Tables[0];

                    if (saleTable.Rows.Count == 0) return null;
                    DataRow saleRow = saleTable.Rows[0];

                    return new Sale()
                    {
                        SaleId = saleRow.Field<int>("SaleId"),
                        CustomerName = saleRow.Field<string>("CustomerName"),
                        CountryCode = saleRow.Field<string>("CountryCode"),
                        RegionCode = saleRow.Field<string>("RegionCode"),
                        CityCode = saleRow.Field<int>("CityCode"),
                        Date = saleRow.Field<DateTime>("Date"),
                        ProductId = saleRow.Field<int>("ProductId"),
                        Price = saleRow.Field<decimal>("Price"),
                        Quantity = saleRow.Field<int>("Quantity"),
                        Total = saleRow.Field<decimal>("Total")
                    };
                }
            }
            catch (System.Exception ex)
            {
                loggerService.Log(new Dictionary<string, string>(){
                    {"exception", ex.Message},
                    {"stack trace", ex.StackTrace}
                });

                return null;
            }
        }

        public async Task<SalesSearch> Search(DateTime dateFrom, DateTime dateTo, string countryCode, string regionCode, int? cityCode, int page, int pageSize)
        {
            SalesSearch salesSearch = new SalesSearch();
            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spSearchSales";
                    command.Parameters.AddWithValue("@dateFrom", dateFrom);
                    command.Parameters.AddWithValue("@dateTo", dateTo);
                    command.Parameters.AddWithValue("@countryCode", countryCode);
                    command.Parameters.AddWithValue("@regionCode", regionCode);
                    command.Parameters.AddWithValue("@cityCode", cityCode);
                    command.Parameters.AddWithValue("@page", page);
                    command.Parameters.AddWithValue("@pageSize", pageSize);

                    DataSet saleSearchData = await sqlService.GetData(command);

                    if (saleSearchData.Tables.Count == 0) return null;
                    DataTable saleSearchItemTable = saleSearchData.Tables[0];

                    List<SalesSearchItem> salesSearchItems = new List<SalesSearchItem>();
                    foreach (DataRow salesSearchItemRow in saleSearchItemTable.Rows)
                    {
                        salesSearchItems.Add(new SalesSearchItem()
                        {
                            SaleId = salesSearchItemRow.Field<int>("SaleId"),
                            CustomerName = salesSearchItemRow.Field<string>("CustomerName"),
                            CountryCode = salesSearchItemRow.Field<string>("CountryCode"),
                            CountryName = salesSearchItemRow.Field<string>("CountryName"),
                            RegionCode = salesSearchItemRow.Field<string>("RegionCode"),
                            RegionName = salesSearchItemRow.Field<string>("RegionName"),
                            CityCode = salesSearchItemRow.Field<int>("CityCode"),
                            CityName = salesSearchItemRow.Field<string>("CityName"),
                            Date = salesSearchItemRow.Field<DateTime>("Date"),
                            ProductId = salesSearchItemRow.Field<int>("ProductId"),
                            ProductName = salesSearchItemRow.Field<string>("ProductName"),
                            Price = salesSearchItemRow.Field<decimal>("Price"),
                            Quantity = salesSearchItemRow.Field<int>("Quantity"),
                            Total = salesSearchItemRow.Field<decimal>("Total")
                        });
                    }
                    salesSearch.Items = salesSearchItems;

                    DataTable saleSearchDetailsTable = saleSearchData.Tables[1];
                    DataRow salesSearchDetailsRow = saleSearchDetailsTable.Rows[0];
                    salesSearch.RecordCount = salesSearchDetailsRow.Field<int>("RecordCount");
                    salesSearch.Pages = salesSearchDetailsRow.Field<int>("Pages");
                }

                return salesSearch;
            }
            catch (System.Exception ex)
            {
                loggerService.Log(new Dictionary<string, string>(){
                    {"exception", ex.Message},
                    {"stack trace", ex.StackTrace}
                });

                return new SalesSearch();
            }
        }
    }
}