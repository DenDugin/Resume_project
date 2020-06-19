package resume.service;

import javax.annotation.Nonnull;

import resume.entity.Profile;


public interface NotificationManagerService {

	void sendRestoreAccessLink(@Nonnull Profile profile, @Nonnull String restoreLink);

	void sendPasswordChanged(@Nonnull Profile profile);
	
	void sendPasswordGenerated(@Nonnull Profile profile, @Nonnull String generatedPassword);
}
