using System.Collections.Generic;
using System.Data;
using System.Linq;
using aKnightsTale.Interfaces;
using aKnightsTale.Models;
using Dapper;

namespace aKnightsTale.Repositories
{
  public class KnightsRepository : IRepository<Knight, int>
  {
    private readonly IDbConnection _db;

    public KnightsRepository(IDbConnection db)
    {
      _db = db;
    }
    public List<Knight> GetAll()
    {
      string sql = @"
      SELECT 
        k.*,
        a.* 
      FROM knights k
      JOIN accounts a ON a.id = k.creatorId";

      return _db.Query<Knight, Profile, Knight>(sql, (k, p) =>
     {
       k.Creator = p;
       return k;
     }).ToList();
    }
  }

  public Knight GetById(int id)
  {
    throw new System.NotImplementedException();
  }

  public Knight Create(Knight item)
  {
    throw new System.NotImplementedException();
  }

  public void Update(Knight item)
  {
    throw new System.NotImplementedException();
  }

  public void Delete(int id)
  {
    throw new System.NotImplementedException();
  }


}
