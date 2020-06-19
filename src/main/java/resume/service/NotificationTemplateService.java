package resume.service;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

import resume.model.NotificationMessage;

public interface NotificationTemplateService {

	@Nonnull NotificationMessage createNotificationMessage (@Nonnull String templateName, @Nullable Object model);
}
