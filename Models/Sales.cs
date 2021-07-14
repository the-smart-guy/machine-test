using System;
using System.ComponentModel.DataAnnotations;

namespace MachineTest.Models
{
    public class Sale
    {
        public int SaleId { get; set; }

        [Required(ErrorMessage = "Please enter Customer Name")]
        public string CustomerName { get; set; }

        [Required(ErrorMessage = "Please select Country")]
        public string CountryCode { get; set; }

        [Required(ErrorMessage = "Please select Region/State")]
        public string RegionCode { get; set; }
        
        [Required(ErrorMessage = "Please select City")]
        public int CityCode { get; set; }

        [Required(ErrorMessage = "Please enter sale Date")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        public DateTime Date { get; set; }
        
        [Required(ErrorMessage = "Please select a Product")]
        public int ProductId { get; set; }

        public decimal Price { get; set; }
        
        [Required(ErrorMessage = "Please enter Quantity")]
        [Range(1, int.MaxValue, ErrorMessage = "Please enter a valid Quantity")]
        public int Quantity { get; set; }
        
        public decimal Total { get; set; }
    }
}