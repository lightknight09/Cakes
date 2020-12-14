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
    /// Логика взаимодействия для AddToolsWindow.xaml
    /// </summary>
    public partial class AddToolsWindow : Window
    {
        public AddToolsWindow()
        {
            InitializeComponent();
        }

        private void ApplyChanges_Click(object sender, RoutedEventArgs e)
        {
            if (EnterToolName.Text == "" || EnterToolType.Text == "" || EnterDescription.Text == "" || EnterProvider.Text == "" ||
                SelectDateOfBuy.Text == "" || EnterWear.Text == "" || EnterAmount.Text == "" || EnterID.Text == "") //Смотрим на заполненность введенных данных
            {
                MessageBox.Show("Все поля обязательны к заполнению!"); //Если что-то не так - говорим об этом
            }
            else //Если все хорошо
            {
                CakeDBEntities db = new CakeDBEntities(); //Подключаем бд

                db.Tools.Load(); //Грузим данные

                int NewID = Convert.ToInt32(EnterID.Text);

                var NewInfo = db.Tools.Where(Info => Info.Id == NewID).FirstOrDefault(); //Смотрим на введенные пользователем данные

                if (NewInfo != null)
                {
                    MessageBox.Show("Введенный ID уже существует!"); //Ругаемся
                }

                if ((NewInfo == null) && EnterToolName.Text == "" || EnterToolType.Text == "" || EnterDescription.Text == "" || EnterProvider.Text == "" ||
                    SelectDateOfBuy.Text == "" || EnterWear.Text == "" || EnterAmount.Text == "" || EnterID.Text == "") //Если все хорошо
                {
                    NewID = Convert.ToInt32(EnterID.Text); //Приписываем введенные данные в столбцы в бд. Каждый соответственно

                    string NewToolName = EnterToolName.Text;
                    string NewToolType = EnterToolType.Text;
                    string NewDescription = EnterDescription.Text;
                    string NewProvider = EnterProvider.Text;
                    DateTime NewDateOfBuy = Convert.ToDateTime(SelectDateOfBuy.Text);
                    string NewWear = EnterWear.Text;
                    int NewAmount = Convert.ToInt32(EnterAmount.Text);
                    int NewToolId = Convert.ToInt32(EnterID.Text);

                    NewInfo = new Tools();

                    NewInfo.ToolName = NewToolName;
                    NewInfo.ToolType = NewToolType;
                    NewInfo.Description = NewDescription;
                    NewInfo.Provider = NewProvider;
                    NewInfo.DateOfBuy = NewDateOfBuy;
                    NewInfo.Wear = NewWear;
                    NewInfo.Amount = NewAmount;
                    NewInfo.Id = NewToolId;

                    db.Tools.Add(NewInfo); //Добавляем
                    db.SaveChanges(); //Сохраняем

                    MessageBox.Show("Новые данные добавлены."); //Говорим, что все хорошо
                }
            }
        }

        private void BackToChiefWindow_Click(object sender, RoutedEventArgs e)
        {
            new ChiefWindow().Show(); //Кнопка возвращения на экран директора

            this.Close();
        }

        private void SelectDateOfBuy_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            DatePicker datePicker = new DatePicker(); //Обрабатываем выбор даты
            datePicker.SelectedDate = new DateTime(2020, 3, 23);
            datePicker.DisplayDateStart = new DateTime(2000, 1, 1); //Самая ранняя дата
            datePicker.DisplayDateEnd = new DateTime(2020, 12, 15); //Самая поздняя дата
            datePicker.SelectedDateFormat = DatePickerFormat.Long;
            datePicker.FirstDayOfWeek = DayOfWeek.Monday;
        }
    }
}
