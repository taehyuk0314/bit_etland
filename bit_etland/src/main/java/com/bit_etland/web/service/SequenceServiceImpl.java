package com.bit_etland.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class SequenceServiceImpl implements SequenceService{

	@Override
	public String arithmeticSequence(Map<?, ?> param) {
		String startNum=(String) param.get("startNum"),
				endNum=(String) param.get("endNum"),
				diff=(String) param.get("diff"),
				result="";
		int E = Integer.parseInt(endNum);
		int A = Integer.parseInt(startNum);
		int D = Integer.parseInt(diff);
		int S= A;
		int N= 2;
		int AN = 0;
		while(true) {
			AN = A+(N-1)* D;
			S= S+AN;
			N = N+1;
			if(N>E)
				break;
		}
		result =String.valueOf(S);
		return result;
	}

	@Override
	public String geometricSequence(Map<?, ?> param) {
		String startNum=(String) param.get("startNum"),
				endNum=(String) param.get("endNum"),
				diff=(String) param.get("diff"),
				result="";
		int A = 2;
		int R = 3;
		int S = A;
		int N = 2;

		while (true) {

			A = A * R;
			S += A;
			N++;
			System.out.println("Count is " + (N - 1) + ", Number is " + A + ", Sum is " + S);
			if (N > 100) {
				
				break;
			}

		}
		System.out.println("S is " + S);
		return result;
	}

	@Override
	public String fibonacciSequence(Map<?, ?> param) {
		int A = 1;
        int B = 1;
        int S = A+B;
        int N = 2;
        int C = 0;
    
        while(true){
            
            C = A + B;
            S += C;
            A = B;
            B = C;
            N++;
            System.out.println(
                    "Count is "+(N)+", Number is "+ C +", Sum is "+ S);
            if(N==20){
                break;
            }
            
        }
        System.out.println("S is "+ S);     
		return null;
	}

	@Override
	public String factorialSequence(Map<?, ?> param) {
		int S = 1;
        int F = 1;
        int N = 0;
        for (N = 2; N < 11; N++) {
            F = F * N;
            S += F;
            System.out.println("Count is " + (N)
                    + ", Number is " + F
                    + ", Sum is " + S);
        }
		return null;
	}

	@Override
	public String switchSequence(Map<?, ?> param) {
		int S = 0;
		int N = 0;
		String ex = "";
		do {
			N++;
			System.out.println("N is " + N);
			S += N;
			System.out.println("합계: " + S);
			ex += "+" + N;
			N++;
			System.out.println("N is " + N);
			S -= N;
			System.out.println("합계: " + S);
			ex += "-" + N;
		} while (N < 19);
		System.out.println(ex + " = " + S);
		return null;
	}

}
// start 1 end 100 diff 1
