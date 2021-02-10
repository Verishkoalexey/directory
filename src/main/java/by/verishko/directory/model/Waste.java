package by.verishko.directory.model;

import javax.persistence.*;

@Entity
@Table
public class Waste {
    @Id
    private Long id;
    private int codeWaste;
    private String nameWaste;
    private String degreeOfDanger;
    private String hazardClass;
    private String kindOfActivity;
    private String educationStandard;

    public Waste() {
    }

    public Waste(Long id, int codeWaste, String nameWaste, String degreeOfDanger, String hazardClass, String kindOfActivity, String educationStandard) {
        this.id = id;
        this.codeWaste = codeWaste;
        this.nameWaste = nameWaste;
        this.degreeOfDanger = degreeOfDanger;
        this.hazardClass = hazardClass;
        this.kindOfActivity = kindOfActivity;
        this.educationStandard = educationStandard;
    }

    public Waste(int codeWaste, String nameWaste, String degreeOfDanger, String hazardClass, String kindOfActivity, String educationStandard) {
        this.codeWaste = codeWaste;
        this.nameWaste = nameWaste;
        this.degreeOfDanger = degreeOfDanger;
        this.hazardClass = hazardClass;
        this.kindOfActivity = kindOfActivity;
        this.educationStandard = educationStandard;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getCodeWaste() {
        return codeWaste;
    }

    public void setCodeWaste(int codeWaste) {
        this.codeWaste = codeWaste;
    }

    public String getNameWaste() {
        return nameWaste;
    }

    public void setNameWaste(String nameWaste) {
        this.nameWaste = nameWaste;
    }

    public String getDegreeOfDanger() {
        return degreeOfDanger;
    }

    public void setDegreeOfDanger(String degreeOfDanger) {
        this.degreeOfDanger = degreeOfDanger;
    }

    public String getHazardClass() {
        return hazardClass;
    }

    public void setHazardClass(String hazardClass) {
        this.hazardClass = hazardClass;
    }

    public String getKindOfActivity() {
        return kindOfActivity;
    }

    public void setKindOfActivity(String kindOfActivity) {
        this.kindOfActivity = kindOfActivity;
    }

    public String getEducationStandard() {
        return educationStandard;
    }

    public void setEducationStandard(String educationStandard) {
        this.educationStandard = educationStandard;
    }

    @Override
    public String toString() {
        return "Waste{" +
                "codeWaste=" + codeWaste +
                ", nameWaste='" + nameWaste + '\'' +
                ", degreeOfDanger='" + degreeOfDanger + '\'' +
                ", hazardClass='" + hazardClass + '\'' +
                ", kindOfActivity='" + kindOfActivity + '\'' +
                ", educationStandard='" + educationStandard + '\'' +
                '}';
    }
}
