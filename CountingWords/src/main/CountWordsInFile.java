package main;

import java.io.*;
import java.util.*;
import java.util.Map.Entry;
import java.util.stream.Collectors;

public class CountWordsInFile {

    public Map<String, Integer> getTop10(String file) throws IOException {

        Map<String, Integer> top10 = new LinkedHashMap<>();

        Map<String, Integer> map = countWords(file);
        Map<String, Integer> sortedMap = sortWordsByOccurrence(map);

        List<String> keys = sortedMap.entrySet().stream()
                .map(Entry::getKey)
                .limit(10)
                .collect(Collectors.toList());

        List<Integer> values = sortedMap.entrySet().stream()
                .map(Entry::getValue)
                .limit(10)
                .collect(Collectors.toList());


        for (int i=0; i< keys.size(); i++) {
            top10.put(keys.get(i), values.get(i));
        }

        return top10;

    }

    private Map<String, Integer> countWords(String file) throws IOException {

        Map<String, Integer> map = new HashMap<>();
        StringBuilder builder = new StringBuilder();

        // Read from file
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String line = reader.readLine();

        while (line != null) {
            String[] words = line.split(" ");
            for (int i = 0; i < words.length; i++) {

                String word = words[i].toLowerCase();
                word = word.replaceAll("[^a-zA-Z0-9']", "");

                if(map.get(word) == null) {
                    map.put(word, 1);
                } else {
                    int occurrences = map.get(word);
                    occurrences++;
                    map.put(word, occurrences);
                }
            }
            builder.append(System.lineSeparator());
            line = reader.readLine();

        }

        return map;
    }

    private Map<String, Integer> sortWordsByOccurrence(Map<String, Integer> map) {

        // Create list with elements from HashMap, as it is not possible to sort a HashMap directly
        List<Entry<String, Integer>> list = new LinkedList<>(map.entrySet());

        // Comparing two values and sorting the list in descending order
        Collections.sort(list, new Comparator<Entry<String, Integer>>() {
            @Override
            public int compare(Entry<String, Integer> o1, Entry<String, Integer> o2) {
                return o2.getValue().compareTo(o1.getValue());
        }
        });

        // Elements in LinkedHashMap are ordered
        Map<String, Integer> sortedMap = new LinkedHashMap<>();
        for (Entry<String, Integer> entry : list)
        {
            sortedMap.put(entry.getKey(), entry.getValue());
        }

        return sortedMap;
    }

}
