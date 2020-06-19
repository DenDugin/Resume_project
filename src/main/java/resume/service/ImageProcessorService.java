package resume.service;

import javax.annotation.Nonnull;

import org.springframework.web.multipart.MultipartFile;

import resume.model.UploadCertificateResult;
import resume.model.UploadResult;


public interface ImageProcessorService {

	@Nonnull UploadResult processNewProfilePhoto(@Nonnull MultipartFile uploadPhoto);

	@Nonnull UploadCertificateResult processNewCertificateImage(@Nonnull MultipartFile uploadCertificateImage);
}
