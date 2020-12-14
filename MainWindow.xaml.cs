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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity;

namespace Cakes
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void EnterSystem_Click(object sender, RoutedEventArgs e)
        {
            string EnterUser = EnterLogin.Text; //Данные введенные пользователем
            string EnterUserPass = EnterPass.Password;

            CakeDBEntities db = new CakeDBEntities(); //Подключаем бд

            db.Users.Load(); //Грузим пользователей

            var Entering = db.Users.Where(Users => Users.Login == EnterUser && Users.Password == EnterUserPass).FirstOrDefault(); //Смотрим на совпадения введенных данных

            if (Entering == null)
            {
                MessageBox.Show("Введенные логин или пароль не верны!"); //Если не совпадает, то говорим об этом
            }

            if (Entering != null) //Смотрим на роли и открываем соответствующие роли
            {
                if ((Entering != null) && Entering.Role == "Заказчик")
                {
                    new CustomerWindow().Show();

                    this.Close();
                }
                
                if ((Entering != null) && Entering.Role == "Менеджер по продажам")
                {
                    new SaleManagerWindow().Show();

                    this.Close();
                }

                if ((Entering != null) && Entering.Role == "Менеджер по закупкам")
                {
                    new BuyManagerWindow().Show();

                    this.Close();
                }

                if ((Entering != null) && Entering.Role == "Мастер")
                {
                    new MasterWindow().Show();

                    this.Close();
                }

                if ((Entering != null) && Entering.Role == "Директор")
                {
                    new ChiefWindow().Show();

                    this.Close();
                }    
            }
        }

        private void Registration_Click(object sender, RoutedEventArgs e)
        {
            new RegWindow().Show(); //Окно регистрации

            this.Close();
        }

        private void ExitSystem_Click(object sender, RoutedEventArgs e)
        {
            this.Close(); //Выход из программы
        }
    }
}
