using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MachineTest.Models
{
    public class SalesSearch
    {
        public int RecordCount { get; set; }
        public int Pages { get; set; }
        public List<SalesSearchItem> Items { get; set; } = new List<SalesSearchItem>();
    }

    public class SalesSearchItem : Sale
    {
        public string CountryName { get; set; }
        public string RegionName { get; set; }
        public string CityName { get; set; }
        public string ProductName { get; set; }
    }
}