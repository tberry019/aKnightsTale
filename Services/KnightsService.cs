using System.Collections.Generic;
using aKnightsTale.Models;
using aKnightsTale.Repositories;

namespace aKnightsTale.Services
{
  public class KnightsService
  {
    private readonly KnightsRepository _repo;
    public KnightsService(KnightsRepository repo)
    {
      _repo = repo;
    }
    internal List<Knight> GetAll()
    {
      return _repo.GetAll();
    }
  }
}