
package newpackage;

import java.util.Comparator;

public class RankingComparator implements Comparator<Torneio> {

    @Override
    public int compare(Torneio o1, Torneio o2) {
        return Torneio.getPontos().compareTo(o1.getPontos());
    }
}
