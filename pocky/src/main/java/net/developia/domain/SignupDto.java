package net.developia.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SignupDto {

	private String userName;
	private String password;
	private String phoneNum;
	private String clubName;
}
