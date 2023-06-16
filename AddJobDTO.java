package dto;

/**
 *
 * @author swayam
 */
public class AddJobDTO 
{
    private String jobtitle,selectcompany, jobtype,skillsrequired,city,jobdescription;

    public String getJobTitle() {
        return jobtitle;
    }

    public void setJobTitle(String jobtitle) {
        this.jobtitle = jobtitle;
    }

    public String getSelectcompany() {
        return selectcompany;
    }

    public void setSelectcompany(String selectcompany) {
        this.selectcompany = selectcompany;
    }

    public String getJobtype() {
        return jobtype;
    }

    public void setJobtype(String jobtype) {
        this.jobtype = jobtype;
    }

    public String getSkillsrequired() {
        return skillsrequired;
    }

    public void setSkillsrequired(String skillsrequired) {
        this.skillsrequired = skillsrequired;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getJobdescription() {
        return jobdescription;
    }

    public void setJobdescription(String jobdescription) {
        this.jobdescription = jobdescription;
    }
    
}
