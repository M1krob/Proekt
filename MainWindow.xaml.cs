using PredDiplom.DB;
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

namespace PredDiplom
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public bazaEntities baza = new bazaEntities();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void vxod_Click(object sender, RoutedEventArgs e)
        {
            var User = baza.Сотрудники.FirstOrDefault(i => (i.Логин == log.Text || i.Почта == log.Text) && i.Пароль == pass.Password);
            int count = 0;

            if (User != null)
            {
                MessageBox.Show("Вход выполнен!");
            }
            else
            {
                MessageBox.Show("Неверные данные!");
            }
        }
    }
}
