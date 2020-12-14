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

namespace Cakes
{
    /// <summary>
    /// Логика взаимодействия для BuyManagerWindow.xaml
    /// </summary>
    public partial class BuyManagerWindow : Window
    {
        public BuyManagerWindow()
        {
            InitializeComponent();
        }

        private void ShowIngredients_Click(object sender, RoutedEventArgs e)
        {
            ShowIngredientsAtributes.Visibility = Visibility.Visible;

            CakeDBEntities db = new CakeDBEntities(); //Подключаем бд

            db.CakeDecoration.Load(); //Грузим данные

            var ListCakeDecoration = from ShowCakeDecoration in db.CakeDecoration select new
            { ShowCakeDecoration.Vendor_name, ShowCakeDecoration.Name, ShowCakeDecoration.Amount, ShowCakeDecoration.Units, ShowCakeDecoration.Type,
                ShowCakeDecoration.Price, ShowCakeDecoration.Weight }; //Прописываем что показать

            ShowIngredientsAtributes.ItemsSource = ListCakeDecoration.ToList(); //Показываем
        }

        private void ShowAtributes_Click(object sender, RoutedEventArgs e)
        {
            ShowIngredientsAtributes.Visibility = Visibility.Visible;

            CakeDBEntities db = new CakeDBEntities();

            db.Ingredients.Load();

            var ListIngredients = from ShowIngredients in db.Ingredients select new
            { ShowIngredients.Name, ShowIngredients.Price, ShowIngredients.GOST, ShowIngredients.Characteristic }; //Прописываем что показать

            ShowIngredientsAtributes.ItemsSource = ListIngredients.ToList(); //Показываем
        }

        private void BackToEnter_Click(object sender, RoutedEventArgs e)
        {
            new MainWindow().Show(); //Переход на окно авторизации

            this.Close();
        }
    }
}
