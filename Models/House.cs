
namespace GreagsListSql.Models
{
    public class House
    {
  public int Id { get; set; }
  public int Bedrooms { get; set; }
  public double? Bathrooms { get; set; }
  public int? Year { get; set; }
  public double? Price { get; set; }
  public int? SqFt { get; set; }
  public string Description { get; set; }

  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }
    }
}