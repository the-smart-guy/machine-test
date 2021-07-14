using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using MachineTest.Models;
using Microsoft.Data.SqlClient;

namespace MachineTest.Interfaces
{
    public interface ISqlService
    {
        Task<int> ExecuteNonQuery(SqlCommand command);
        Task<object> ExecuteScalar(SqlCommand command);
        Task<DataSet> GetData(SqlCommand command);
    }
}