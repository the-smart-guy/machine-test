using System.Collections.Generic;
using System.Threading.Tasks;
using MachineTest.Models;

namespace MachineTest.Interfaces
{
    public interface IMasterRepository
    {
        Task<List<Country>> GetCountries();
        Task<List<Region>> GetRegions(string countryCode);
        Task<List<City>> GetCities(string regionCode);
        Task<List<Product>> GetProducts();
        Task<Product> GetProduct(int productId);
    }
}