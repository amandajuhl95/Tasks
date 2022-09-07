package test;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import services.CountWordsInFile;

class CountWordsInFileTest {

    CountWordsInFile countWordsInFile;

    @BeforeEach
    void setUp() throws FileNotFoundException {

        String filename = "src/data/itsMyLife.txt";
        countWordsInFile = new CountWordsInFile(filename);
    }


    @Test
    void countWords() throws IOException {

        Map<String, Integer> map = countWordsInFile.countWords();

        assertEquals(85, map.size());
        assertEquals(19, map.get("my"));

        assertTrue(map.size() > 0);
        assertTrue(!map.isEmpty());

    }

    @Test
    void top10() {

        HashMap<String, Integer> map = new HashMap<>();
        map.put("Cat", 10);
        map.put("Dog", 7);
        map.put("Fish", 12);
        map.put("Giraffe", 1);
        map.put("Lion", 5);
        map.put("Tiger", 7);
        map.put("Elephant", 9);
        map.put("Zebra", 19);
        map.put("Horse", 4);
        map.put("Rabbit", 6);
        map.put("Pig", 3);

        Map<String, Integer> top10 = countWordsInFile.getTop10(map);

        assertEquals(11, map.size());
        assertEquals(10, top10.size());
        assertFalse(top10.containsKey("Giraffe"));
    }


}