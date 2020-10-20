using Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace BLL
{
    public partial interface IUserBusiness
    {
        User2Model Authenticate(string username, string password);
        User2Model GetDatabyID(string id);
        bool Create(User2Model model);
        bool Update(User2Model model);
        bool Delete(string id);
        List<User2Model> Search(int pageIndex, int pageSize, out long total, string hoten, string taikhoan);

    }
}
