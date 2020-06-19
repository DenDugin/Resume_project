package resume.service;

import java.util.List;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

import org.springframework.web.multipart.MultipartFile;

import resume.entity.Certificate;
import resume.entity.Contacts;
import resume.entity.Course;
import resume.entity.Education;
import resume.entity.Hobby;
import resume.entity.Language;
import resume.entity.Practic;
import resume.entity.Profile;
import resume.entity.Skill;
import resume.entity.SkillCategory;
import resume.form.InfoForm;
import resume.form.PasswordForm;
import resume.form.SignUpForm;
import resume.model.CurrentProfile;


public interface EditProfileService {

	@Nullable Profile findProfileById(@Nonnull CurrentProfile currentProfile);
	
	@Nonnull Contacts findContactsById(@Nonnull CurrentProfile currentProfile);

	@Nonnull Profile createNewProfile(@Nonnull SignUpForm signUpForm);

	void removeProfile(@Nonnull CurrentProfile currentProfile);

	@Nonnull Profile updateProfilePassword(@Nonnull CurrentProfile currentProfile, @Nonnull PasswordForm form);

	void updateProfileData(@Nonnull CurrentProfile currentProfile, @Nonnull Profile data, @Nonnull MultipartFile uploadPhoto);

	void updateContacts(@Nonnull CurrentProfile currentProfile, @Nonnull Contacts data);
	
	void updateInfo(@Nonnull CurrentProfile currentProfile, @Nonnull InfoForm form);

	@Nonnull List<Hobby> listHobbiesWithProfileSelected(@Nonnull CurrentProfile currentProfile);

	void updateHobbies(@Nonnull CurrentProfile currentProfile, @Nonnull List<String> hobbies);

	@Nonnull List<Language> listLanguages(@Nonnull CurrentProfile currentProfile);

	void updateLanguages(@Nonnull CurrentProfile currentProfile, @Nonnull List<Language> languages);

	@Nonnull List<Skill> listSkills(@Nonnull CurrentProfile currentProfile);

	@Nonnull List<SkillCategory> listSkillCategories();

	void updateSkills(@Nonnull CurrentProfile currentProfile, @Nonnull List<Skill> skills);

	@Nonnull List<Practic> listPractics(@Nonnull CurrentProfile currentProfile);

	void updatePractics(@Nonnull CurrentProfile currentProfile, @Nonnull List<Practic> practics);

	@Nonnull List<Education> listEducations(@Nonnull CurrentProfile currentProfile);

	void updateEducations(@Nonnull CurrentProfile currentProfile, @Nonnull List<Education> educations);

	@Nonnull List<Certificate> listCertificates(@Nonnull CurrentProfile currentProfile);
	
	void updateCertificates(@Nonnull CurrentProfile currentProfile, @Nonnull List<Certificate> certificates);
	
	@Nonnull List<Course> listCourses(@Nonnull CurrentProfile currentProfile);
	
	void updateCourses(@Nonnull CurrentProfile currentProfile, @Nonnull List<Course> courses);

}
