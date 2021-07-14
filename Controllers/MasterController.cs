using System.Collections.Generic;
using System.Threading.Tasks;
using MachineTest.Interfaces;
using MachineTest.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace MachineTest.Controllers
{
    public class MasterController : Controller
    {
        private readonly IMasterRepository masterRepository;
        public MasterController(IMasterRepository masterRepository)
        {
            this.masterRepository = masterRepository;
        }

        [Authorize]
        [HttpGet]
        public async Task<IActionResult> Countries()
        {
            return Ok(await masterRepository.GetCountries());
        }

        [Authorize]
        [HttpGet]
        public async Task<IActionResult> Regions(string countryCode)
        {
            return Ok(await masterRepository.GetRegions(countryCode));
        }

        [Authorize]
        [HttpGet]
        public async Task<IActionResult> Cities(string regionCode)
        {
            return Ok(await masterRepository.GetCities(regionCode));
        }
    }
}