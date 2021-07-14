using System.Collections.Generic;
using System.Threading.Tasks;
using MachineTest.Models;

namespace MachineTest.Interfaces
{
    public interface ILoggerService
    {
        void Log(Dictionary<string, string> messages);
    }
}