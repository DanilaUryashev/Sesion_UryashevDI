using Pawnshop.ModelBD;
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

namespace Pawnshop
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static PawnshopEntities db = ConnectingBD.GetContext();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string login = Login.Text;
            string password = Password.Password;
            var authUser = db.Employees.Where(b => b.Login == login && b.Password == password).FirstOrDefault();
            if (authUser != null)
            {
                MessageBox.Show("Авторизация прошла успешно");
            }
            else MessageBox.Show("Не верно введен логин или пароль");
        }
        private void Cancel(object sender, RoutedEventArgs e)
        {
            Login.Clear();
            Password.Clear();
        }
    }
}
