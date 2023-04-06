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
using System.Windows.Threading;

namespace MovementAndTimer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        bool goUp, goDown;
        int playerSpeed = 8;

        DispatcherTimer gameTimer = new DispatcherTimer();

        public MainWindow()
        {
            InitializeComponent();

            myCanvas.Focus();

            gameTimer.Tick += GameTimerEvent;
            gameTimer.Interval = TimeSpan.FromMilliseconds(sldDelay.Value);
            gameTimer.Start();
        }


        private void GameTimerEvent(object sender, EventArgs e)
        {
            
            
            if (goUp == true && Canvas.GetTop(player) > 5)
            {
                Canvas.SetTop(player, Canvas.GetTop(player) - playerSpeed);
            }

            if (goDown == true && Canvas.GetTop(player) + (player.Height * 2) < Application.Current.MainWindow.Height)
            {
                Canvas.SetTop(player, Canvas.GetTop(player) + playerSpeed);
            }
            Canvas.SetLeft(player, Canvas.GetLeft(player) - playerSpeed);

            if (Canvas.GetLeft(player) < 5 || Canvas.GetLeft(player) + (player.Width * 2) > Application.Current.MainWindow.Width)
            {
                playerSpeed = -playerSpeed;
            }
            

        }

        private void KeyIsDown(object sender, KeyEventArgs e)
        {

            if (e.Key == Key.Up)
            {
                goUp = true;
            }

            if (e.Key == Key.Down)
            {
                goDown = true;
            }
        }


        private void btnStart_Click_1(object sender, RoutedEventArgs e)
        {
            switch (btnStart.Content)
            {
                case "Start":
                    btnStart.Content = "Stop";
                    break;
                default:
                    btnStart.Content = "Start";
                    break;
            }
        }

        private void btnExit_Click_1(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnExit_MouseEnter(object sender, MouseEventArgs e)
        {
            btnExit.Cursor = Cursors.Hand;
        }

        private void KeyIsUp(object sender, KeyEventArgs e)
        {

            if (e.Key == Key.Up)
            {
                goUp = false;
            }

            if (e.Key == Key.Down)
            {
                goDown = false;
            }
        }
    }
}
