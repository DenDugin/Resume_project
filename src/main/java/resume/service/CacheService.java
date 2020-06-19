package resume.service;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

import resume.entity.Profile;


public interface CacheService {

	// Сервис для загурзки пользователя из бд
	// сначала поиск по uid в кэше, если нет то грузим из БД и добавляем в кещ
	@Nullable Profile findProfileByUid(@Nonnull String uid);


	// удаление из кэша по uid
	void deleteProfileByUid(@Nonnull String uid);
}
