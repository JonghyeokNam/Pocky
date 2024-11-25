package net.developia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import net.developia.domain.LoginDto;
import net.developia.domain.MemberDto;
import net.developia.domain.SignupDto;
import net.developia.service.MemberService;

@RestController
@RequiredArgsConstructor
public class MemberController {
	
	private final MemberService memberService;
	
	//회원가입
	@PostMapping("/signup")
	public ResponseEntity<String> signup(@RequestBody SignupDto signupDto) {
		memberService.signup(signupDto);
		return ResponseEntity.status(HttpStatus.OK).body("회원가입 성공");
	}
	
	//로그인
	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestBody LoginDto loginDto, HttpServletRequest request) {
		MemberDto member = memberService.login(loginDto);
		
		if (member != null) {
			//로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("member", session);
			LoginResponseDto response = new LoginResponseDto(member.getId(), member.getMemberName(), member.getMajor());
			return ResponseEntity.status(HttpStatus.OK).body(response);
		} else {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인 실패");
		}
	}
}
