using aKnightsTale.Models;

namespace aKnightsTale.Interfaces
{
  public interface ICreated
  {
    string CreatorId { get; set; }
    Profile Creator { get; set; }
  }
}