using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.Entity;
using System.Text.RegularExpressions;

namespace Cakes
{
    /// <summary>
    /// Логика взаимодействия для RegWindow.xaml
    /// </summary>
    public partial class RegWindow : Window
    {
        public RegWindow()
        {
            InitializeComponent();
        }

        private void RegInSys_Click(object sender, RoutedEventArgs e)
        {
            string NewUserName = NewName.Text; //Пользовательские данные
            string NewUserSurname = NewSurname.Text;
            string NewUserLogin = NewLogin.Text;
            string NewUserPass = NewPass.Password;

            CakeDBEntities db = new CakeDBEntities(); //Подключаем бд

            db.Users.Load(); //Грузим пользователей

            var NewUser = db.Users.Where(Users => Users.Login == NewUserLogin).FirstOrDefault(); //Смотрим на данные

            if (NewUser != null) //Если совпадают, то говорим об этом
            {
                MessageBox.Show("Такой пользователь уже существует!");
            }

            if (NewUserName == "" || NewUserSurname == "" || NewUserLogin == "" || NewUserPass == "") //Если что-то упустил, то говорим об этом
            {
                MessageBox.Show("Все поля обязательны к заполнению!");
            }
            else
            {
                if (NewUserPass == NewUserLogin) //Смотрим на совпадения логина и пароля
                {
                    MessageBox.Show("Пароль и логин не должны совпадать!");
                }
                else
                {
                    if (NewUserPass.Length < 5) //Пароль не должен быть коротким
                    {
                        MessageBox.Show("Пароль должен содержать от 5 до 20 символов!");
                    }
                    else
                    {
                        if (Regex.IsMatch(NewUserPass, @"[А-ЯЁ]")) //Смотрим на раскладку
                        {
                            MessageBox.Show("Пароль должен содержать только буквы латинского алфавита");
                        }
                        else
                        {
                            if ((NewUser == null) && NewName.Text != "" || NewSurname.Text != "" || NewLogin.Text != "" || NewPass.Password != ""
                                && Regex.IsMatch(NewUserPass, @"[a-z]") && Regex.IsMatch(NewUserPass, @"[A-Z]")) //Если все хорошо,
                            {
                                NewUser = new Users(); //То вписываем данные

                                NewUser.Last_name = NewUserSurname;
                                NewUser.First_name = NewUserName;
                                NewUser.Login = NewUserLogin;
                                NewUser.Password = NewUserPass;

                                db.Users.Add(NewUser);
                                db.SaveChanges();

                                MessageBox.Show("Регистрация пройдена успешно!"); //И говорим пользователю, что все хорошо
                                Close();
                            }
                            else
                            {
                                MessageBox.Show("Пароль должен содержать заглавные и строчные буквы!");
                            }
                        }
                    }
                }
            }
        }

        private void LeaveReg_Click(object sender, RoutedEventArgs e)
        {
            new MainWindow().Show(); //Переход на окно регистрации

            this.Close();
        }
    }
}
