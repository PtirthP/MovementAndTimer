   M S B A M L   `   `   `  ����K  GMovementAndTimer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:MovementAndTimerMovementAndTimer  5   	   !    MovementAndTimer.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:MovementAndTimer     5   	     � Title$  Movement and Timer��5   	   $	��450��6$   $	��800��61   .��5	      �� -   5        $��myCanvas��5	      
�������|�. .+�5
   
   �� -   5        $��player��5
      $��50��6#   
���  �� �� Bottom$ 20��6:   
 �� Top$	 192��6M    �� Left$	 375��6^   $��Center=�6p   $	��Top=�6�    �� RadiusX$ 1��6�   $��50��6�   �� 5   
   -   5         ��Name$ btnStart��5      $��Start��6#   $	 614��63   $	 357��6E   $
��Left=�6V   $	��Top=�6q   $��62��6�   6�   �� 5   
   -   5        $ btnExit��5      $
��Exit��6"   $	 614��61   $	 382��6C   $
��Left=�6T   $	��Top=�6o   $��62��6�   6�   �� 5   
   -   5         ��Name$ sldSpeed��5      $ 99��6#   $	 377��64   $	��120��6E   $��Center=�6Q   $	��Top=�6n    � Minimum$ 10Q�6�    � Maximum$ 50Q�6�   	 � Value$	 20Q�6�   
 �� TickFrequency$
 10Q�6�   �� 5   
   -   5         ��Name$
 lbl1��5      $��Movement Slider��6   $	 109��68   $	 351��6J   $
��Left=�6[   $��Center=�6v   �� 5   
   -   5        $ sldDelay��5      $	 340��6#   $	 376��65   $	��120��6F   $��Center=�6R   $	��Top=�6o   $	
 200Q�6�   $
 2000Q�6�   $	 200Q�6�   $
	 1000Q�6�   �� 5   
   -   5        $
 lbl2��5      $��Time Delay Slider��6   $	 349��6:   $	 351��6L   5      5      