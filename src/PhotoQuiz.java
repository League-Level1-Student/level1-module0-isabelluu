/*
 *    Copyright (c) The League of Amazing Programmers 2013-2017
 *    Level 1
 */


import java.awt.Component;
import java.net.MalformedURLException;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class PhotoQuiz {

	public static void main(String[] args) throws Exception {
		JFrame quizWindow = new JFrame();
		quizWindow.setVisible(true);
                quizWindow.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);   // This will make sure the program exits when you close the window

		// 1. find an image on the internet, and put its URL in a String variable (from your browser, right click on the image, and select “Copy Image Address”)
                	String photo1 = "https://consequenceofsound.files.wordpress.com/2016/11/frank-ocean-new-york-times-interview.png?w=807";
		// 2. create a variable of type "Component" that will hold your image
                	Component frank = createImage(photo1);
		// 3. use the "createImage()" method below to initialize your Component
                	
		// 4. add the image to the quiz window
                quizWindow.add(frank);
		// 5. call the pack() method on the quiz window
                quizWindow.pack();
		// 6. ask a question that relates to the image
                String answer = JOptionPane.showInputDialog("What is this person's 2016 album?");
		// 7. print "CORRECT" if the user gave the right answer
                int score = 0;
                if(answer.equals("Blonde"))
                {
                		JOptionPane.showMessageDialog(null, "Correct!! :)");
                		score++;
                }

		// 8. print "INCORRECT" if the answer is wrong
                else 
                		JOptionPane.showMessageDialog(null, "Incorrect! :(");
		// 9. remove the component from the quiz window (you may not see the effect of this until step 12)
                quizWindow.remove(frank);
                
		// 10. find another image and create it (might take more than one line of code)
		String photo2 = "http://www3.pictures.zimbio.com/gi/Malia+Manuel+Samsung+Galaxy+Studio+Beach+WSL+mSVpW8K6kAql.jpg";
		// 11. add the second image to the quiz window
			Component malia = createImage(photo2);
		// 12. pack the quiz window
			quizWindow.add(malia);
			quizWindow.pack();
		// 13. ask another question
			 String answer2 = JOptionPane.showInputDialog("What is this person's profession?");
			 
			 if(answer2.equals("Surfing"))
			 {
				 JOptionPane.showMessageDialog(null, "Correct!! :)");
				 score++;
			 }

			 else 
				 JOptionPane.showMessageDialog(null, "Incorrect! :(");

		// 14+ check answer, say if correct or incorrect, etc.
			 JOptionPane.showMessageDialog(null, "Your score is : " + score);

	}



	private static Component createImage(String imageUrl) throws MalformedURLException {
		URL url = new URL(imageUrl);
		Icon icon = new ImageIcon(url);
		JLabel imageLabel = new JLabel(icon);
		return imageLabel;
	}

	/* OPTIONAL */
	// *14. add scoring to your quiz
	// *15. make something happen when mouse enters image (imageComponent.addMouseMotionListener()) 
}





