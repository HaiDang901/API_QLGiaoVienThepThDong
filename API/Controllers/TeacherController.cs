using System;
using System.Collections.Generic;
using System.Linq;
using BLL;
using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Model;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TeacherController : ControllerBase
    {
        private ITeacherBusiness _teacherBusiness;

        public TeacherController(ITeacherBusiness teacherBusiness)
        {
            _teacherBusiness = teacherBusiness;
        }

        [Route("create-item")]
        [HttpPost]
        public TeacherModel CreateItem([FromBody] TeacherModel model)
        {
            _teacherBusiness.Create(model);
            return model;
        }

        [Route("get-by-id/{id}")]
        [HttpGet]
        public TeacherModel GetbyID(string id)
        {
            return _teacherBusiness.GetbyID(id);
        }

        [Route("get-all")]
        [HttpGet]
        public IEnumerable<TeacherModel> GetData()
        {
            return _teacherBusiness.GetData();
        }

        [Route("get-teacher-gende/{Gende_Teacher}")]
        [HttpGet]
        public TeacherModel GetTeacher(bool Gende_Teacher)
        {
            return _teacherBusiness.GetTeacher(Gende_Teacher);
        }

        [Route("search")]
        [HttpPost]
        public ResponseModel Search([FromBody] Dictionary<string, object> formData)
        {
            var response = new ResponseModel();
            try
            {
                var page = int.Parse(formData["page"].ToString());
                var pageSize = int.Parse(formData["pageSize"].ToString());
                string Name_Teacher = "";
                if (formData.Keys.Contains("Name_Teacher") && !string.IsNullOrEmpty(Convert.ToString(formData["Name_Teacher"])))
                { Name_Teacher = Convert.ToString(formData["Namer_Teacher"]); }

                string Nation_Teacher = "";
                if (formData.Keys.Contains("Nation_Teacher") && !string.IsNullOrEmpty(Convert.ToString(formData["Nation_Teacher"])))
                { Nation_Teacher = Convert.ToString(formData["Nation_Teacher"]); }

                long total = 0;
                var data = _teacherBusiness.Search(page, pageSize, out total, Name_Teacher, Nation_Teacher);
                response.TotalItems = total;
                response.Data = data;
                response.Page = page;
                response.PageSize = pageSize;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return response;
        }
        // DELETE api/<TeacherController>/5

        [Route("")]
        [HttpDelete("{id}")]
        public void Delete(string id)
        {

        }

    }
}
