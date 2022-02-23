using System;
using System.Collections.Generic;
using aKnightsTale.Models;
using aKnightsTale.Services;
using Microsoft.AspNetCore.Mvc;

namespace aKnightsTale.Controllers
{
  [ApiController]
  [Route("Api/[controller]")]

  public class KnightsController : ControllerBase
  {
    private readonly KnightsService _ks;
    public KnightsController(KnightsService ks)
    {
      _ks = ks;
    }
    [HttpGet]
    public ActionResult<List<Models.Knight>> GetAll()
    {
      try
      {
        List<Knight> knights = _ks.GetAll();
        return Ok(knights);
      }
      catch (Exception e)
      {

        return BadRequest(e.Message);
      }
    }
  }
}