using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MachineTest.Models;
using Microsoft.AspNetCore.Authorization;
using MachineTest.Interfaces;
using System.Data.SqlTypes;

namespace MachineTest.Controllers
{
    [Authorize]
    public class SalesController : Controller
    {
        private readonly IMasterRepository masterRepository;
        private readonly ISaleRepository saleRepository;
        public SalesController(IMasterRepository masterRepository, ISaleRepository saleRepository)
        {
            this.masterRepository = masterRepository;
            this.saleRepository = saleRepository;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public async Task<IActionResult> Search(string dateFrom, string dateTo, string countryCode, string regionCode, int? cityCode, int page, int pageSize)
        {
            DateTime _dateFrom;
            if (!DateTime.TryParse(dateFrom, out _dateFrom)) _dateFrom = (DateTime)SqlDateTime.MinValue;

            DateTime _dateTo;
            if (!DateTime.TryParse(dateTo, out _dateTo)) _dateTo = (DateTime)SqlDateTime.MaxValue;

            SalesSearch salesSearch = await saleRepository.Search(_dateFrom, _dateTo, countryCode, regionCode, cityCode, page, pageSize);
            return Ok(salesSearch);
        }

        #region Sale/Editor
        [HttpGet]
        public async Task<IActionResult> Editor(int Id)
        {
            Sale sale = new Sale();
            if (Id == 0)
            {
                sale.Date = DateTime.Today;
            }
            else
            {
                sale = await saleRepository.Get(Id);
                if (sale == null) 
                {
                    ModelState.Clear();
                    TempData["ErrorMessage"] = "Invalid Sales Entry.";
                    return RedirectToAction("Editor", "Sales", new{ ID = "" });
                }
            }

            ViewBag.products = await masterRepository.GetProducts();
            ViewBag.countries = await masterRepository.GetCountries();
            if (!string.IsNullOrEmpty(sale.CountryCode)) ViewBag.regions = await masterRepository.GetRegions(sale.CountryCode);
            if (!string.IsNullOrEmpty(sale.RegionCode)) ViewBag.cities = await masterRepository.GetCities(sale.RegionCode);

            return View(sale);
        }

        [HttpPost]
        public async Task<IActionResult> Editor(Sale sale)
        {
            if (ModelState.IsValid)
            {
                Sale newSale = await saleRepository.Save(sale);
                if (newSale == null) TempData["ErrorMessage"] = "Sales Entry could not be saved.";
                else
                {
                    TempData["SuccessMessage"] = "The Sales Entry was saved.";
                    return RedirectToAction("Editor", "Sales", new { Id = newSale.SaleId });
                }
            }

            ViewBag.products = await masterRepository.GetProducts();
            ViewBag.countries = await masterRepository.GetCountries();
            if (!string.IsNullOrEmpty(sale.CountryCode)) ViewBag.regions = await masterRepository.GetRegions(sale.CountryCode);
            if (!string.IsNullOrEmpty(sale.RegionCode)) ViewBag.cities = await masterRepository.GetCities(sale.RegionCode);

            return View(sale);
        }
        #endregion
    }
}
