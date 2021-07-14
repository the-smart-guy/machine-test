using System;
using System.Collections.Generic;
using System.IO;
using MachineTest.Interfaces;
using MachineTest.Models;

namespace MachineTest.Services
{
    public class LoggerService : ILoggerService
    {
        public void Log(Dictionary<string, string> messages)
        {
            string path = @"Exceptionlog.txt";

            if (!File.Exists(path))
            {
                using (StreamWriter sw = File.CreateText(path))
                {
                    sw.WriteLine("Log File Created at " + DateTime.Now);
                }
            }

            using (StreamWriter sw = File.AppendText(path))
            {
                sw.WriteLine("Timestamp : " + DateTime.Now);
                foreach (KeyValuePair<string, string> message in messages)
                {
                    sw.WriteLine(message.Key + " : " + message.Value);
                }
                sw.WriteLine("");
            }
        }
    }
}