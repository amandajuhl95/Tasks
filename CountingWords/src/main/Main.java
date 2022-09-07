package main;

import services.CountWordsInFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;

public class Main {

    private static final String FILENAME = "src/data/shakespeare.txt";

    public static void main(String[] args) {

        try {
            CountWordsInFile countWordInFile = new CountWordsInFile(FILENAME);

            Map<String, Integer> map = countWordInFile.countWords();
            Map<String, Integer> top10 = countWordInFile.getTop10(map);
            System.out.println(top10);

        } catch(FileNotFoundException e) {
            System.out.println("File " + FILENAME + " not found");
        } catch (IOException e) {
            System.out.println("Something went wrong while reading " + FILENAME);
        }

    }
}
