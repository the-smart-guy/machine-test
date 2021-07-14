using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using MachineTest.Interfaces;
using MachineTest.Models;
using Microsoft.Data.SqlClient;

namespace MachineTest.Repositories
{
    public class MasterRepository : IMasterRepository
    {
        private readonly ISqlService sqlService;
        private readonly ILoggerService loggerService;
        public MasterRepository(ISqlService sqlService, ILoggerService loggerService)
        {
            this.sqlService = sqlService;
            this.loggerService = loggerService;
        }

        public async Task<List<Country>> GetCountries()
        {
            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetCountries";
                    DataSet countriesData = await sqlService.GetData(command);

                    if (countriesData.Tables.Count == 0) return null;
                    DataTable countriesTable = countriesData.Tables[0];

                    List<Country> countries = new List<Country>();
                    foreach (DataRow countryRow in countriesTable.Rows)
                    {
                        countries.Add(new Country()
                        {
                            CountryCode = countryRow.Field<string>("CountryCode"),
                            CountryName = countryRow.Field<string>("CountryName")
                        });
                    }

                    return countries;
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

        public async Task<List<Region>> GetRegions(string countryCode)
        {
            if (string.IsNullOrEmpty(countryCode)) return null;

            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetRegions";
                    command.Parameters.AddWithValue("@countryCode", countryCode);
                    DataSet regionsData = await sqlService.GetData(command);

                    if (regionsData.Tables.Count == 0) return null;
                    DataTable regionsTable = regionsData.Tables[0];

                    List<Region> regions = new List<Region>();
                    foreach (DataRow regionRow in regionsTable.Rows)
                    {
                        regions.Add(new Region()
                        {
                            RegionCode = regionRow.Field<string>("RegionCode"),
                            CountryCode = regionRow.Field<string>("CountryCode"),
                            RegionName = regionRow.Field<string>("RegionName")
                        });
                    }

                    return regions;
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

        public async Task<List<City>> GetCities(string regionCode)
        {
            if (string.IsNullOrEmpty(regionCode)) return null;

            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetCities";
                    command.Parameters.AddWithValue("@regionCode", regionCode);
                    DataSet citiesData = await sqlService.GetData(command);

                    if (citiesData.Tables.Count == 0) return null;
                    DataTable citiesTable = citiesData.Tables[0];

                    List<City> cities = new List<City>();
                    foreach (DataRow cityRow in citiesTable.Rows)
                    {
                        cities.Add(new City()
                        {
                            CityCode = cityRow.Field<int>("CityCode"),
                            RegionCode = cityRow.Field<string>("RegionCode"),
                            CityName = cityRow.Field<string>("CityName")
                        });
                    }

                    return cities;
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

        public async Task<Product> GetProduct(int productId)
        {
            if (productId == 0) return null;

            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetProduct";
                    command.Parameters.AddWithValue("@productId", productId);
                    DataSet productData = await sqlService.GetData(command);

                    if (productData.Tables.Count == 0) return null;
                    DataTable productTable = productData.Tables[0];

                    if (productTable.Rows.Count == 0) return null;
                    DataRow productRow = productTable.Rows[0];

                    return new Product()
                    {
                        ProductId = productRow.Field<int>("ProductId"),
                        ProductName = productRow.Field<string>("ProductName"),
                        Price = productRow.Field<decimal>("Price")
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

        public async Task<List<Product>> GetProducts()
        {
            try
            {
                using (SqlCommand command = new SqlCommand() { CommandType = CommandType.StoredProcedure })
                {
                    command.CommandText = "spGetProducts";
                    DataSet productsData = await sqlService.GetData(command);

                    if (productsData.Tables.Count == 0) return null;
                    DataTable productsTable = productsData.Tables[0];

                    List<Product> products = new List<Product>();
                    foreach (DataRow productRow in productsTable.Rows)
                    {
                        products.Add(new Product()
                        {
                            ProductId = productRow.Field<int>("ProductId"),
                            ProductName = productRow.Field<string>("ProductName"),
                            Price = productRow.Field<decimal>("Price")
                        });
                    }

                    return products;
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
    }
}