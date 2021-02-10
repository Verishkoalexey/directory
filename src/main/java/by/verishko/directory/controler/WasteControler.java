package by.verishko.directory.controler;

import by.verishko.directory.model.Waste;
import by.verishko.directory.repo.WasteRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class WasteControler {

    @Autowired
    private WasteRepo wasteRepo;

    @GetMapping("/waste/{id}")
    public String getWaste(@PathVariable long id, ModelMap wasteModel) {
        Waste waste = wasteRepo.getOne(id);
        wasteModel.addAttribute("waste", waste);
        return "wastes";
    }

    @GetMapping("/wastes")
    public String getWastes(ModelMap wasteModel) {
        List<Waste> wastes = wasteRepo.findAll();
        wasteModel.addAttribute("wastes", wastes);
        return "wastes";
    }

    @GetMapping("addWaste")
    public String addPage() {
        return "add";
    }

    @PostMapping("/add/waste")
    public String addWaste(@RequestParam(value = "codeWaste", required = true) int codeWaste,
                           @RequestParam(value = "nameWaste", required = true) String nameWaste,
                           @RequestParam(value = "degreeOfDanger", required = true) String degreeOfDanger,
                           @RequestParam(value = "hazardClass", required = true) String hazardClass,
                           @RequestParam(value = "kindOfActivity", required = true) String kindOfActivity,
                           @RequestParam(value = "educationStandard", required = true) String educationStandard,
                           ModelMap wasteModel) {
        Waste waste = new Waste();
        waste.setCodeWaste(codeWaste);
        waste.setNameWaste(nameWaste);
        waste.setDegreeOfDanger(degreeOfDanger);
        waste.setHazardClass(hazardClass);
        waste.setKindOfActivity(kindOfActivity);
        waste.setEducationStandard(educationStandard);
        wasteRepo.save(waste);
        wasteModel.addAttribute("msg", "Waste added successfully");
        List<Waste> wastes = wasteRepo.findAll();
        wasteModel.addAttribute("wastes", wastes);
        return "wastes";
    }

    @GetMapping("update/waste/{id}")
    public String updatePage(@PathVariable("id") long id, ModelMap wasteModel) {
        wasteModel.addAttribute("id", id);
        Waste waste = wasteRepo.getOne(id);
        wasteModel.addAttribute("waste", waste);
        return "update";
    }

    @PostMapping("/update/waste")
    public String updateWaste(@RequestParam long id,
                              @RequestParam(value = "codeWaste", required = true) int codeWaste,
                              @RequestParam(value = "nameWaste", required = true) String nameWaste,
                              @RequestParam(value = "degreeOfDanger", required = true) String degreeOfDanger,
                              @RequestParam(value = "hazardClass", required = true) String hazardClass,
                              @RequestParam(value = "kindOfActivity", required = true) String kindOfActivity,
                              @RequestParam(value = "educationStandard", required = true) String educationStandard,
                              ModelMap wasteModel) {
        Waste waste = new Waste(id, codeWaste, nameWaste, degreeOfDanger, hazardClass, kindOfActivity, educationStandard);
        wasteRepo.save(waste);
        List<Waste> wastes = wasteRepo.findAll();
        wasteModel.addAttribute("wastes", wastes);
        wasteModel.addAttribute("id", id);
        wasteModel.addAttribute("msg", "Waste updated successfully");
        return "wastes";
    }

    @GetMapping("/delete/waste/{id}")
    public String deleteWaste(@PathVariable long id, ModelMap wasteModel) {
        wasteRepo.delete(wasteRepo.getOne(id));
        List<Waste> wastes = wasteRepo.findAll();
        wasteModel.addAttribute("wastes", wastes);
        wasteModel.addAttribute("msg", "Waste delted successfully");
        return "wastes";
    }
}
