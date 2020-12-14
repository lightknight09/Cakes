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
    /// Логика взаимодействия для ChiefWindow.xaml
    /// </summary>
    public partial class ChiefWindow : Window
    {
        public ChiefWindow()
        {
            InitializeComponent();
        }

        private void AddTools_Click(object sender, RoutedEventArgs e)
        {
            new AddToolsWindow().Show(); //Переход на окно добавления инструментов

            this.Close();
        }

        private void ShowTools_Click(object sender, RoutedEventArgs e)
        {
            ShowIngredientsAtributes.Visibility = Visibility.Visible; //Показываем таблицу

            CakeDBEntities db = new CakeDBEntities(); //Подключаем бд

            db.Tools.Load(); //Грузим данные

            var ListTools = from ShowTools in db.Tools select new { ShowTools.ToolName, ShowTools.ToolType, ShowTools.DateOfBuy, ShowTools.Amount }; //Прописываем что показать

            ShowIngredientsAtributes.Visibility = Visibility.Visible; //Показываем
        }

        private void ShowIngredients_Click(object sender, RoutedEventArgs e)
        {
            ShowIngredientsAtributes.Visibility = Visibility.Visible;

            CakeDBEntities db = new CakeDBEntities();

            db.CakeDecoration.Load();

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
