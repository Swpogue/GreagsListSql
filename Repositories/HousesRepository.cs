using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GreagsListSql.Repositories
{
  public class HousesRepository
  {
    private readonly IDbConnection _db;


    public HousesRepository(IDbConnection db)
    {
        _db = db;
    }

    internal House CreateHouse(House houseData)
    {
    string sql = @"
    INSERT INTO houses
    (bedrooms, bathrooms, year, price, sqft, description)
    VALUES
    (@bedrooms, @bathrooms, @year, @price, @sqft, @description);
    SELECT * FROM houses WHERE id = LAST_INSERT_ID();";
    House house = _db.Query<House>(sql, houseData).FirstOrDefault();
    return house;
    }

    internal List<House> GetAllHouses()
    {
      string sql = "SELECT * FROM houses ORDER BY createdAt DESC";
      List<House> houses = _db.Query<House>(sql).ToList();
      return houses;
    }
  }
}