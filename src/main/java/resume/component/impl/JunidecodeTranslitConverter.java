package resume.component.impl;

import org.springframework.stereotype.Component;

import resume.component.TranslitConverter;
import net.sf.junidecode.Junidecode;


@Component
public class JunidecodeTranslitConverter implements TranslitConverter {

	@Override
	public String translit(String text) {
		return Junidecode.unidecode(text);
	}
}
