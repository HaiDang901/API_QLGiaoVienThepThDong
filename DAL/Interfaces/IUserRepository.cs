using System;
using System.Collections.Generic;
using System.Text;
using Model;

namespace DAL
{
    public interface  IUserRepository
    {
        User2Model GetUser(string username, string password);
        User2Model GetDatabyID(string id);
        bool Create(User2Model model);
        bool Update(User2Model model);
        bool Delete(string id);
        List<User2Model> Search(int pageIndex, int pageSize, out long total, string hoten, string taikhoan);
    }
}
