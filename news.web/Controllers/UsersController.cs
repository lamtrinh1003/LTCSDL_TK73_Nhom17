using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
namespace news.web.Controllers
{
    using BLL;
    using DAL.Models;
    using Common.Req;
    using Common.Rsp;
    using news.DAL;
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        public UsersController()
        {
            _svc = new UsersSvc();
        }
        [HttpPost("create-users")]
        public IActionResult CreateUsers(UsersReq req)
        {
            var res = _svc.CreateUsers(req);
            return Ok(res);
        }
        [HttpPost("update-users")]
        public IActionResult UpdateUsers(UsersReq req)
        {
            var res = _svc.UpdateUsers(req);
            return Ok(res);
        }
        [HttpPost("search-users")]
        public IActionResult SearchUsers(SearchReq req)
        {
            var res = _svc.SearchUsers(req.keyWord, req.size, req.page);
            return Ok(res);
        }
        [HttpPost("delete-users")]
        public IActionResult DeleteUsers(DeleteReq req)
        {
            var res = _svc.DeleteUsers(req.id);
            return Ok(res);
        }
        private readonly UsersSvc _svc;
    }
}