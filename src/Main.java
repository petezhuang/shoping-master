import view.Login;

import java.awt.*;

public class Main {
	public static void main(String[] args) {
		 try {
			
			 System.setProperty("sun.java2d.noddraw","true");
			 org.jb2011.lnf.beautyeye.BeautyEyeLNFHelper.launchBeautyEyeLNF();
		 }
		 catch (Exception e) {
			 //TODO
		 }
		EventQueue.invokeLater(new Runnable() {
			@Override
			public void run() {
				try {
					Login frame = new Login();
					frame.setTitle("超市管理与购物系统");
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

}
