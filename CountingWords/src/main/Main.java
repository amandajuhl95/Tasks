package main;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;

public class Main {

    private static final String FILENAME = "src/data/shakespeare.txt";

    public static void main(String[] args) {

        CountWordsInFile countWordInFile = new CountWordsInFile();
<<<<<<< Updated upstream
        Map<String, Integer> top10 = countWordInFile.getTop10("src/data/shakespeare.txt");
=======
>>>>>>> Stashed changes

        try {
            Map<String, Integer> top10 = countWordInFile.getTop10(FILENAME);
            System.out.println(top10);

        } catch(IOException e) {
            System.out.println("Message: " + e.getMessage());
        }


    }
}
