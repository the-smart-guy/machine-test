using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;
using MachineTest.Interfaces;
using MachineTest.Models;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace MachineTest.Services
{
    public class SqlService : ISqlService
    {
        private readonly string connectionString;
        private readonly ILoggerService loggerService;

        public SqlService(IConfiguration configuration, ILoggerService loggerService)
        {
            connectionString = configuration.GetConnectionString("DigitalAvenueDBConnection");
            this.loggerService = loggerService;
        }

        public async Task<int> ExecuteNonQuery(SqlCommand command)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    command.Connection = connection;
                    connection.Open();
                    int returnValue = await command.ExecuteNonQueryAsync();
                    connection.Close();
                    return returnValue;
                }
            }
            catch (System.Exception ex)
            {
                loggerService.Log(new Dictionary<string, string>(){
                    {"exception", ex.Message},
                    {"stack trace", ex.StackTrace}
                });

                return -1;
            }
        }

        public async Task<object> ExecuteScalar(SqlCommand command)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    command.Connection = connection;
                    connection.Open();
                    object returnValue = await command.ExecuteScalarAsync();
                    connection.Close();
                    return returnValue;
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

        public async Task<DataSet> GetData(SqlCommand command)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    command.Connection = connection;
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                    {
                        DataSet DS = new DataSet();
                        dataAdapter.Fill(DS, "data");
                        return DS;
                    }
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