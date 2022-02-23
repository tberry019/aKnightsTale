using System;
using aKnightsTale.Interfaces;

namespace aKnightsTale.Models
{
  public class Knight : IRepoItem<int>
  {
    public string Name { get; set; }
    public string Weapon { get; set; }
    public string ImgUrl { get; set; }
    public int Id { get; set; }
    public string CreatorId { get; set; }
    public Profile Creator { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
  }
}