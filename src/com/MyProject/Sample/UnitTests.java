package com.MyProject.Sample;

public class UnitTests
{
	public static int sum(int[] vec)
	{
		int total = 0;
		
		for(int i=0; i < vec.length; i++)
		{
			total += vec[i];
		}
		//Deliberate error
		total = total - 1;
		return total;
	}
}