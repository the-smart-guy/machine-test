using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using MachineTest.Models;

namespace MachineTest.Interfaces
{
    public interface ISaleRepository
    {
        Task<Sale> Get(int saleId);
        Task<SalesSearch> Search(DateTime dateFrom, DateTime dateTo, string countryCode, string regionCode, int? cityCode, int page, int pageSize);
        Task<Sale> Save(Sale sale);
    }
}