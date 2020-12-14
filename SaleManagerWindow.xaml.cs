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

namespace Cakes
{
    /// <summary>
    /// Логика взаимодействия для SaleManagerWindow.xaml
    /// </summary>
    public partial class SaleManagerWindow : Window
    {
        public SaleManagerWindow()
        {
            InitializeComponent();
        }

        private void BackToEnter_Click(object sender, RoutedEventArgs e)
        {
            new MainWindow().Show(); //Кнопка выхода на окно регистрации

            this.Close();
        }
    }
}
