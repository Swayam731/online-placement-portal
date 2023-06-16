package model;

import dto.SearchingDTO;

/**
 *
 * @author swayam
 */
public class SearchingAuthenticator 
{
    public boolean isSearch(SearchingDTO sdto)
    {
        String tenthpercent = sdto.getTenthpercent();
        String twelthpercent = sdto.getTwelthpercent();
        String cgpa = sdto.getCgpa();
        String back = sdto.getBack();
        if(!tenthpercent.equals("") || !twelthpercent.equals("") || !cgpa.equals("") || !back.equals(""))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
