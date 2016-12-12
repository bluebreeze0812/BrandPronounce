<div class="category-content">
	<?php
		foreach ($names as $capital => $brand)
		{
			echo "<div class='brand-group'>";
			echo "<span class='capital'>{$capital}</span>";
			for ($i = 0; $i < count($brand); $i+=3)
			{
				echo "<a class='item' href='#'><span class='hidden'>{$brand[$i]}</span>{$brand[$i + 1]} ({$brand[$i + 2]})</a>";
			}
			echo "</div>";
		}
	?>
</div>
