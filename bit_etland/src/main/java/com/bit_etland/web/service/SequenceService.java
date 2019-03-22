package com.bit_etland.web.service;

import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public interface SequenceService {
	public String arithmeticSequence(Map<?,?>param);
	// Section 03 등비 수열 
	public String geometricSequence(Map<?,?>param);
	// Section 04 피보나치 수열 
	public String fibonacciSequence(Map<?,?>param);
	// Section 05 누승 활용 수열 
	public String factorialSequence(Map<?,?>param);
	// Section 06 제곱의 합 
	// Section 07 ‘+,-‘ 교행 자연수 수열 
	public String switchSequence(Map<?,?>param);
	// Section 08 ‘+,-‘ 교행 분수 수열 
}
