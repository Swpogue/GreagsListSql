using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GreagsListSql.Services
{
    public class HousesService
    {
        private readonly HousesRepository _repo;

        public HousesService(HousesRepository repo)
        {
            _repo = repo;
        }

    internal House CreateHouse(House houseData)
    {
      House house = _repo.CreateHouse(houseData);
    return house;
    }

    internal List<House> GetAllHouses()
        {
            List<House> houses = _repo.GetAllHouses();
            return houses;
        }
    }
}