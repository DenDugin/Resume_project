package resume.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Nonnull;

import resume.entity.Hobby;
import resume.model.LanguageLevel;
import resume.model.LanguageType;


public interface StaticDataService {

	@Nonnull Set<Hobby> listAllHobbies();
	
	@Nonnull List<Hobby> createHobbyEntitiesByNames(@Nonnull List<String> names);
	
	@Nonnull Map<Integer, String> mapMonths();
	
	@Nonnull List<Integer> listPracticsYears();
	
	@Nonnull List<Integer> listCourcesYears();
	
	@Nonnull List<Integer> listEducationYears();
	
	@Nonnull Collection<LanguageType> getAllLanguageTypes(); 
	
	@Nonnull Collection<LanguageLevel> getAllLanguageLevels();
}
