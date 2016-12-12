<?php

function any_in_array($needel, $haystack)
{
	$needel = is_array($needel) ? $needel : array($needel);
	
	foreach ($needel as $item)
	{
		if (in_array($item, $haystack, TRUE))
		{
			return TRUE;
		}
	}
	
	return FALSE;
}

function return_random()
{
	$arr = range(1, 5000);
	shuffle($arr);
	return array_pop($arr);
}
