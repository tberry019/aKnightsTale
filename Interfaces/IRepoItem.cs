using System;

namespace aKnightsTale.Interfaces
{
  public interface IRepoItem<T>
  {
    T Id { get; set; }
    DateTime CreatedAt { get; set; }
    DateTime UpdatedAt { get; set; }
  }
}