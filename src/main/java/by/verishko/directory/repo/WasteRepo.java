package by.verishko.directory.repo;

import by.verishko.directory.model.Waste;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public interface WasteRepo extends JpaRepository<Waste, Long> {

}
