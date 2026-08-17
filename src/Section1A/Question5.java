package Section1A;

import java.io.FileWriter;
import java.io.IOException;

public class Question5{
    public static void main(String[] args){
        try{
            FileWriter writer = new FileWriter("newfile.txt");
            writer.write("This is my newly created file.");
            writer.close();
            System.out.println("File created successfully.");
        } catch (IOException e){
            e.printStackTrace();
        }

    }
}