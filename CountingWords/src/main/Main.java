package main;
import java.io.IOException;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws IOException {

        CountWordsInFile countWordInFile = new CountWordsInFile();
        Map<String, Integer> top10 = countWordInFile.getTop10("src/data/itsMyLife.txt");

        System.out.println(top10);


    }
}
