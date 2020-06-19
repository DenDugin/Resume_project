package resume.configuration;

import java.util.Collections;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.concurrent.ConcurrentMapCacheFactoryBean;
import org.springframework.cache.support.SimpleCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
@EnableCaching // активируем аннотации для кеширования
public class CacheConfig {

	@Bean
	public SimpleCacheManager cacheManager(){
		SimpleCacheManager manager = new SimpleCacheManager();
		manager.setCaches(Collections.singleton(profileCache().getObject()));
		return manager;
	}


	// релазиция кэша в оперативной памяти
	@Bean
	public ConcurrentMapCacheFactoryBean profileCache(){
		ConcurrentMapCacheFactoryBean cache = new ConcurrentMapCacheFactoryBean();
		cache.setName("profile");
		return cache;
	}
}
