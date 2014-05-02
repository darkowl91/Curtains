package com.home.validation;

import com.home.model.image.Picture;
import com.home.validation.annotation.PictureFileSize;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;


public class PictureFileSizeValidator implements
		ConstraintValidator<PictureFileSize, Picture> {

	private long maxSize;

	@Override
	public void initialize(PictureFileSize constraintAnnotation) {
		this.maxSize = constraintAnnotation.maxSize();
	}

	@Override
	public boolean isValid(Picture picture,	ConstraintValidatorContext context) {

		if (picture.getPicture().length > (maxSize * 1024)) {
			return false;
		}

		return true;
	}
}
